-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2023 pada 05.51
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palapa2022`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `faskes_categories`
--

CREATE TABLE `faskes_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_fktp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perawat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokter_umum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokter_gigi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_faskes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmap_embed` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `faskes_categories`
--

INSERT INTO `faskes_categories` (`id`, `kode_fktp`, `title`, `slug`, `service_hour`, `about`, `kecamatan`, `desa`, `city`, `no_telp`, `address`, `perawat`, `dokter_umum`, `dokter_gigi`, `rating`, `jenis_faskes`, `gmap_embed`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '02330004', 'Klinik Brimobda Polda Bali', 'klinik-brimobda-polda-bali', 'SENIN-SABTU 08.00-20.00', 'KLINIK BHAYANGKARA SATBRIMOB POLDA BALI adalah Klinik Kesehatan yang terletak di Denpasar. Alamat entitas yang terdaftar adalah Jl. WR Supratman No.295, Kesiman Kertalangu, Kec. Denpasar Tim., Kota Denpasar, Bali 80237.', 'Denpasar Timur', 'Kesiman Kertalangu<', 'Kota Denpasar', '0361467721', 'JL. WR. SUPRATMAN, TOHPATI', '1', '3', '0', '77', 'Klinik Polri', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1694.818713408909!2d115.2578786180929!3d-8.633871790919638!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23f9307c1540d%3A0xcd43d97864eb1c43!2sKLINIK%20BHAYANGKARA%20SATBRIMOB%20POLDA%20BALI!5e0!3m2!1sid!2sid!4v1668066893420!5m2!1sid!2sid', NULL, '2022-06-20 05:45:15', '2023-02-09 04:21:25'),
(2, '0233B001', 'Klinik SOS Gatot Kaca', 'klinik-sos-gatot-kaca', '24 Jam', 'Klinik Pratama SOS Gatotkaca di Kota Denpasar didirikan tahun 1991 oleh Prof. Dr. dr. Ketut Sukardika,SpMK sebagai klinik pertama di Bali yang beroperasi selama 24 Jam dengan misi memberikan pertolongan bagi sesama yang membutuhkan', 'Denpasar Utara', 'Dangin Puri Kauh', 'Kota Denpasar', '0361223555', 'Jl. Gatotkaca No.21', '10', '6', '2', '90', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.4046764875816!2d115.2135355747224!3d-8.653006891394055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2409efc24467f%3A0x58fdc75fe8feb1a3!2sKlinik%20SOS%20Gatotkaca!5e0!3m2!1sid!2sid!4v1668067481580!5m2!1sid!2sid', NULL, '2022-06-20 07:02:00', '2023-01-26 23:32:02'),
(3, '0233B006', 'Klinik Remedium Care', 'klinik-remedium-care', '24 Jam', 'Klinik Remedium Care merupakan klinik yang memberikan pelayanan umum dan gigi yang berlokasi di Denpasar, Bali. Klinik Remedium Care berusaha menyediakan pelayanan kesehatan yang mudah diakses dengan tarif terjangkau dan kualitas pelayanan medis yang baik. Klinik didukung oleh tim medis yang terampil dan memiliki fasilitas lengkap seperti pelayanan obat, ambulance, dan beberapa layanan penunjang medis lainnya.', 'Denpasar Selatan', 'Ds. Sanur Kauh', 'Kota Denpasar', '0361288860', 'Jalan By Pass Ngurah Rai Sanur', 'No Data', '7', '2', '80.931', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d263.045246342929!2d115.25850326181128!3d-8.698512229986113!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd241b83df0508f%3A0xe323ca4a7d74f75e!2sKlinik%20Remedium%20Care!5e0!3m2!1sid!2sid!4v1669969608277!5m2!1sid!2sid', NULL, '2022-06-20 07:03:42', '2022-12-02 00:27:05'),
(4, '0233B084', 'KLINIK PT KIMIA FARMA APOTEK', 'klinik-pt-kimia-farma-apotek', '24 Jam', 'Klinik ini .....', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0361255914', 'Jalan Diponegoro Nomor 125', '21', '15', '3', '85', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15776.910716748815!2d115.19827553955076!3d-8.669884999999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd24172fba5679f%3A0xc92f93b30e391650!2sApotek%20Kimia%20Farma%20Diponegoro!5e0!3m2!1sid!2sid!4v1672130998929!5m2!1sid!2sid', NULL, '2022-06-20 07:04:19', '2022-12-27 00:50:14'),
(5, '', '12', '12', '12', '12', '12', '0', '12', '121212121', '12', '12', '12', '12', '12', '', '', '2022-10-29 17:08:50', '2022-10-28 00:11:14', '2022-10-29 17:08:50'),
(6, '0233B076', 'Klinik Wirati', 'klinik-wirati', 'SENIN - SABTU  17.00-22.00  (PERSALINAN 24 JAM )', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Kel. Pedungan', 'Kota Denpasar', '0361229357', 'JL. PULAU SAELUS II/3 DPS', 'No Data', '2', '1', '57', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.050100008981!2d115.20880357472278!3d-8.686785891361536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd240de12ff95df%3A0xf5a7eddc4aea1997!2sKlinik%20Pratama%20Wirati!5e0!3m2!1sid!2sid!4v1669796959458!5m2!1sid!2sid', NULL, '2022-10-29 16:44:06', '2022-11-30 00:30:31'),
(7, '', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', NULL, '', '', '2022-10-29 17:10:04', '2022-10-29 17:07:19', '2022-10-29 17:10:04'),
(8, '02260003', 'Klinik Rindam IX/Udayana (AD)', 'klinik-rindam-ixudayana-ad', 'SENIN S/D KAMIS JAM 07.30 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.30 - 13.00', 'Faskes Tingkat Pertama BPJS Kesehatan di Kab Tabanan', 'Kediri', 'Banjar Anyar', 'Kabupaten Tabanan', '081337230640', 'Jl. Kapten Piere Tendean No. 1', '3', '4', '1', '77', 'Klinik TNI', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1658.8958955689372!2d115.14408391552413!3d-8.543818659606696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23bb27f1184ad%3A0xebb77260e0ba2523!2sPPK%201%20Sikes%20Rindam%20Udayana!5e0!3m2!1sid!2sid!4v1674804858940!5m2!1sid!2sid', NULL, '2022-10-29 17:10:28', '2023-01-26 23:36:49'),
(9, '02260001', 'Puskesmas Tabanan III', 'puskesmas-tabanan-iii', 'SENIN S/D KAMIS JAM 07.00 - 14.00, JUMAT 07.00 - 11.00,SABTU 07.00 - 12.00  DAN UGD 24 JAM', 'Pusat kesehatan masyarakat di Tabanan, Bali', 'Tabanan', 'Dajan Peken', 'Kabupaten Tabanan', '0361815049', 'Jl Gunung Agung No. 82', '7', '6', '3', '93', 'Puskesmas', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.6771418834396!2d115.12541687472084!3d-8.530691691512098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23af73f2cd7fb%3A0xa4618829cbc1c4c4!2sUPTD%20Puskesmas%20Tabanan%20III!5e0!3m2!1sid!2sid!4v1669785689416!5m2!1sid!2sid', NULL, '2022-11-02 17:16:47', '2023-01-26 23:37:58'),
(10, '02260004', 'Polres Tabanan (POL)', 'polres-tabanan-pol', 'SENIN S/D JUMAT JAM 08.00 - 14.00, SABTU JAM 08.00-11.00', 'Faskes Tingkat Pertama BPJS Kesehatan di Kab Tabanan', 'Tabanan', 'Delod Peken', 'Kabupaten Tabanan', '085738376299', 'Jl. Pahlawan No. 12', 'No Data', '2', '1', '75', 'Klinik Polri', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4428.77845002137!2d115.13025722330683!3d-8.538818716238943!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a56d5b252cd%3A0x46fbcc392093b58e!2sPolres%20Tabanan!5e0!3m2!1sid!2sid!4v1669789045006!5m2!1sid!2sid', NULL, '2022-11-03 19:10:01', '2023-01-26 23:39:50'),
(11, '0226B001', 'Kimia Farma Nusa Dua', 'kimia-farma-nusa-dua', '24 Jam', 'Faskes Tingkat I di Kabupaten Badung', 'Kuta Selatan', 'Benoa<', 'Kabupaten Badung', '0361778555', 'Jln. I Gusti Ngurah Rai No 890', 'No Data', '9', '2', '83', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4688.91163404854!2d115.2176750701713!3d-8.796530166859743!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd243ec93e79793%3A0xf5e8d11f75e21856!2sApotek%20Kimia%20Farma%20126%20Nusa%20Dua!5e0!3m2!1sid!2sid!4v1674805265257!5m2!1sid!2sid', NULL, '2022-11-03 19:12:37', '2023-01-26 23:41:24'),
(12, '0226B002', 'Klinik Barta Medika', 'klinik-barta-medika', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Dauh Peken', 'Kabupaten Tabanan', '081558004444', 'Jl.Pulau Nias No 5', 'No Data', '2', '1', '78', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.5953169991362!2d115.11139597472096!3d-8.538609391504453!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a6108ac6a41%3A0x46a4d480c19040cc!2sKLINIK%20BARTA%20MEDIKA!5e0!3m2!1sid!2sid!4v1669790175248!5m2!1sid!2sid', NULL, '2022-11-03 19:15:31', '2023-01-26 23:41:55'),
(13, '0226B003', 'Klinik Maha Bhoga Marga', 'klinik-maha-bhoga-marga', 'SENIN-JUMAT 08.00-20.00,SABTU 08.00-12.00', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Bongan', 'Kabupaten Tabanan', '08123602312', 'Jl Kebo Iwa', 'No Data', '2', '1', '81', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.7059848251018!2d115.11316753669216!3d-8.559172432845157!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a145d164761%3A0xc10121c60385761e!2sKlinik%20Pratama%20MBM!5e0!3m2!1sid!2sid!4v1669791173990!5m2!1sid!2sid', NULL, '2022-11-03 19:17:24', '2023-01-26 23:43:04'),
(14, '0226B004', 'Klinik Satya', 'klinik-satya', 'SENIN -  MINGGU 08.00 - 21.00', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Banjar Anyar', 'Kabupaten Tabanan', '03617991765', 'Jl. A. Yani No 82 Banjar Anyar Kediri (Timur Patung Sukarno Kediri)', 'No Data', '4', '1', '82', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.4286277673905!2d115.1384882793457!3d-8.55471639999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a354e13749b%3A0x6883b5b9cc524036!2sSatya%20Klinik%20Pratama%20Rawat%20Jalan!5e0!3m2!1sid!2sid!4v1669791678980!5m2!1sid!2sid', NULL, '2022-11-03 19:19:30', '2022-11-29 23:01:32'),
(15, '0226G001', 'drg. Ni Gusti Ayu Arianingsih', 'drg-ni-gusti-ayu-arianingsih', '16.30-22.30 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Selemadeg Timur', 'Desa Bantas', 'Kabupaten Tabanan', '085237475916', 'Desa Bantas Tengah Kaja', 'No Data', '0', '1', '81', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1971.8324923573664!2d115.049889934662!3d-8.495632355418575!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x79188196fac71f1d!2sdrg.%20Ni%20Gusti%20Ayu%20Arianingsih!5e0!3m2!1sid!2sid!4v1673591882309!5m2!1sid!2sid', NULL, '2022-11-03 19:20:54', '2023-01-12 22:38:27'),
(16, '0226G002', 'drg. I Wayan Putera Wiyasa', 'drg-i-wayan-putera-wiyasa', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Tabanan', 'Desa Delod Peken', 'Kabupaten Tabanan', '08123942430', 'Jl. Ir Soekarno No 999', 'No Data', '0', '1', '89.938', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1115.189344460047!2d115.12047872384582!3d-8.548579394307328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1b9c49c63c89d8b7!2zOMKwMzInNTQuNSJTIDExNcKwMDcnMTUuNiJF!5e0!3m2!1sid!2sid!4v1672386105835!5m2!1sid!2sid', NULL, '2022-11-03 19:22:47', '2022-12-29 23:42:14'),
(17, '0226G003', 'drg. Ni Putu Sri Santun  W.', 'drg-ni-putu-sri-santun-w', '15.00-21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Marga', 'Desa Kukuh', 'Kabupaten Tabanan', '0361811641', 'Jl. Raya Alas Kedaton', 'No Data', '0', '1', '88', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.8123749325214!2d115.15142407472071!3d-8.517589991524714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4e1bcb359f8e0b40!2zOMKwMzEnMDMuMyJTIDExNcKwMDknMTQuNCJF!5e0!3m2!1sid!2sid!4v1669792565271!5m2!1sid!2sid', NULL, '2022-11-03 19:24:05', '2022-11-29 23:16:29'),
(18, '0226G004', 'drg.  Ni Wayan Wirati M.Kes', 'drg-ni-wayan-wirati-mkes', '15.00-21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Baturiti', 'Desa Baturiti', 'Kabupaten Tabanan', '0361813856', 'Ds. Baturiti Tengah, Baturiti', 'No Data', '0', '1', '87.725', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.554513334534!2d115.07946841460367!3d-8.54255499385916!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23088af03af67%3A0x6ba02499baa2ea3c!2sDrg.%20Ni%20Wayan%20Wirati%2C%20M.Kes!5e0!3m2!1sid!2sid!4v1672386861569!5m2!1sid!2sid', NULL, '2022-11-03 19:26:50', '2022-12-29 23:55:09'),
(19, '0226G005', 'drg. I Ketut Martawan', 'drg-i-ketut-martawan', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Selemadeg Timur', 'Desa Bantas', 'Kabupaten Tabanan', '081337566936', 'Br. Dinas Bantas Baleagung', 'No Data', '0', '1', '82', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.0142968925325!2d115.01742207472044!3d-8.497989991543639!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf08048cccd74e7bb!2zOMKwMjknNTIuOCJTIDExNcKwMDEnMTIuMCJF!5e0!3m2!1sid!2sid!4v1669792766361!5m2!1sid!2sid', NULL, '2022-11-03 19:28:36', '2022-11-29 23:19:40'),
(20, '0226G006', 'drg. Luh Gede Anta Kesumasari', 'drg-luh-gede-anta-kesumasari', '15.00-21.00 (KECUALI HARI LIBUR)', 'No data', 'Penebel', 'Desa Jegu', 'Kabupaten Tabanan', '081338584333', 'Ds. Jegu Baleagung', 'No Data', '0', '1', '90.887', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d993.7692586285101!2d115.13688259996279!3d-8.452703032747268!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1d87b74224246c6f!2zOMKwMjcnMDguNyJTIDExNcKwMDgnMTMuMiJF!5e0!3m2!1sid!2sid!4v1672387716617!5m2!1sid!2sid', NULL, '2022-11-03 19:30:15', '2022-12-30 00:08:54'),
(21, '0226G007', 'drg.  Gst Ayu Putu Tuty Kusumawati', 'drg-gst-ayu-putu-tuty-kusumawati', '15.00-21.00 (KECUALI HARI LIBUR)', 'no data', 'Kerambitan', 'Desa Kerambitan', 'Kabupaten Tabanan', '081353196433', 'Raya Meliling Ds. Meliling', 'No Data', '0', '1', '78.387', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d315.2386841796023!2d115.08312901746!3d-8.510340360668236!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2300e3a4b15ed%3A0x5e71dbc577155396!2sDrg.%20Tuty%20Kusumawati!5e0!3m2!1sid!2sid!4v1672387845402!5m2!1sid!2sid', NULL, '2022-11-03 19:32:00', '2022-12-30 00:11:08'),
(22, '0226G008', 'drg. Ni Made Ayet Wintari', 'drg-ni-made-ayet-wintari', '17.00-22.00 (KECUALI HARI LIBUR)', 'no data', 'Kediri', 'Desa Pandak Bandung', 'Kabupaten Tabanan', '03618764765', 'Jln Tendean no 51 , Banjar Tanah Bang', 'No Data', '0', '1', '78.962', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d493.19848585790794!2d115.1459766211351!3d-8.539327999999992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23baaabf791d3%3A0x19b2d9aa92e6481f!2sAyet%20Wintari!5e0!3m2!1sid!2sid!4v1672388355923!5m2!1sid!2sid', NULL, '2022-11-03 19:34:02', '2022-12-30 00:19:34'),
(23, '0226G011', 'drg. Suci Dewi', 'drg-suci-dewi', '14.00-19.00 SENIN-JUMAT', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dauh Peken', 'Kabupaten Tabanan', '0361811188', 'Jl. Pulau Menjangan No.3', 'No Data', '0', '1', '91.545', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d630.4318721970631!2d115.12187297033404!3d-8.537879462050974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf365c975b4c4abe7!2zOMKwMzInMTcuOCJTIDExNcKwMDcnMTkuMiJF!5e0!3m2!1sid!2sid!4v1672388866348!5m2!1sid!2sid', NULL, '2022-11-03 19:35:22', '2022-12-30 00:28:10'),
(24, '0226G012', 'drg. Putu Dharmalaksana', 'drg-putu-dharmalaksana', '17.00-21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Pandak Bandung', 'Kabupaten Tabanan', '0361812789', 'Jl.By Pass Ir. Soekarno No. 8x', 'No Data', '0', '1', '91.037', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15781.742954427868!2d115.13048202417696!3d-8.554029901618623!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b6496a5a87d%3A0xabf4769c9a562f3!2sDokter%20Gigi%20Putu%20Dharmalaksana!5e0!3m2!1sid!2sid!4v1672835619830!5m2!1sid!2sid', NULL, '2022-11-03 19:37:06', '2023-01-04 04:54:13'),
(25, '0226G013', 'drg. I Nym. Priyatno', 'drg-i-nym-priyatno', '07.00 -13.00 SENIN-SABTU & 07.00 -11.00 HARI LIBUR (KECUALI HARI MINGGU )', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Pupuan', 'Desa Pupuan<', 'Kabupaten Tabanan', '08563797771', 'Desa Pupuan', 'No Data', '0', '1', '91.5', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d542.0420333838312!2d115.01761672620741!3d-8.319735941404122!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd18738b72928db%3A0xe317e09fce1fb570!2sDRG.%20I%20NYOMAN%20PRIYATNO!5e0!3m2!1sid!2sid!4v1674806139570!5m2!1sid!2sid', NULL, '2022-11-03 19:39:31', '2023-01-26 23:56:47'),
(26, '0226G016', 'drg. A.A Sagung Mas Aritrisna Widayanti', 'drg-aa-sagung-mas-aritrisna-widayanti', '19.00 - 21.00 SENIN - JUMAT', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Delod Peken', 'Kabupaten Tabanan', '0361812034', 'Jl. Pahlawan No. 15', 'No Data', '0', '1', '73.187', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5191.1948424251505!2d115.12948098348173!3d-8.54119792141172!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a512a2e3f51%3A0x66fa4b6335b62a0e!2sPraktek%20drg.A.A.Sg.Mas%20Aritrisna%20W.!5e0!3m2!1sid!2sid!4v1674806255365!5m2!1sid!2sid', NULL, '2022-11-03 19:41:03', '2023-01-26 23:58:18'),
(27, '0226G017', 'drg. I Wayan Agus Eka Putra', 'drg-i-wayan-agus-eka-putra', '16.00 - 22.00 (SENIN - MINGGU)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Baturiti', 'Mekarsari<', 'Kabupaten Tabanan', '082111509191', 'Br Tundak, No 2', 'No Data', '0', '1', '89', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1446.8677238448583!2d115.19408678144043!3d-8.376632468473533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd221800eeefa17%3A0x9be965d13e049930!2spraktek%20dokter%20gigi%20(drg%20I%20Wyn%20Agus%20Eka%20Putra)!5e0!3m2!1sid!2sid!4v1674806384043!5m2!1sid!2sid', NULL, '2022-11-03 19:42:30', '2023-01-27 00:00:04'),
(28, '0226G018', 'drg. Ni Made Wedeartini', 'drg-ni-made-wedeartini', '15.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Beraban', 'Kabupaten Tabanan', '081337281522', 'Jalan Raya Tanah Lot No.86 Banjar Batanbuah', 'No Data', '0', '1', '90.088', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d594.9457157823773!2d115.1043312610647!3d-8.603541017089356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2395c6ae8a1e7%3A0x4cb0dffd8164bca9!2sPraktek%20Drg%20wedeartini!5e0!3m2!1sid!2sid!4v1672837532526!5m2!1sid!2sid', NULL, '2022-11-03 19:45:07', '2023-01-04 05:05:48'),
(29, '0226U004', 'dr. Ni Made Kencanawati', 'dr-ni-made-kencanawati', '15.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Baturiti', 'Desa Luwus', 'Kabupaten Tabanan', '03617847674', 'Br. Luwus, Ds Luwus', '0', '0', '1', '75.42', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d823.8008518292562!2d115.19517403961001!3d-8.394217948087457!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4b7e52a3bf805f5e!2zOMKwMjMnMzkuMyJTIDExNcKwMTEnNDIuMCJF!5e0!3m2!1sid!2sid!4v1672838123057!5m2!1sid!2sid', NULL, '2022-11-03 19:46:43', '2023-01-04 05:15:39'),
(30, '0226U005', 'dr. Ni Ketut Yudyaratna', 'dr-ni-ketut-yudyaratna', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Tabanan', 'Desa Delod Peken', 'Kabupaten Tabanan', '081999781874', 'Jl. Debes', 'No Data', '1', '0', '75', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.5966548794886!2d115.13342707472091!3d-8.538479991504545!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa5f1a3ff1362136f!2zOMKwMzInMTguNSJTIDExNcKwMDgnMDkuNiJF!5e0!3m2!1sid!2sid!4v1669793769526!5m2!1sid!2sid', NULL, '2022-11-03 21:43:49', '2022-11-29 23:36:24'),
(31, '0226U006', 'dr. Ni Luh Gd Sukardiasih,M.For', 'dr-ni-luh-gd-sukardiasihmfor', '15.00-20.30 SENIN -SABTU &15.00-17.00 HARI MINGGU/LIBUR', 'Faskes Tingkat Pertama BPJS Kesehatan di Kab Tabanan', 'Kediri', 'Desa Kaba-Kaba', 'Kabupaten Tabanan', '08123847376', 'Jl. Hasanudin Gg.V/22', 'No Data', '1', '0', '62', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.639861518917!2d115.13242707472105!3d-8.534299991508613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x853967654ff95871!2zOMKwMzInMDMuNSJTIDExNcKwMDgnMDYuMCJF!5e0!3m2!1sid!2sid!4v1669778637151!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', NULL, '2022-11-03 21:45:01', '2022-11-30 00:13:12'),
(32, '0226U007', 'dr. I Nyoman Suratmika, M. Kes', 'dr-i-nyoman-suratmika-m-kes', '16.00-22.00 SETIAP HARI', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Tabanan', 'Desa Gubug', 'Kabupaten Tabanan', '08123961091', 'Jl.Raya Yeh Gangga,Tanah Pegat', '0', '1', '0', '72', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.4561980378026!2d115.1017326747211!3d-8.552054391491492!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a72225f4d7d%3A0xdf031597044e5f08!2sdr.%20Nyoman%20Suratmika%2C%20M.Kes!5e0!3m2!1sid!2sid!4v1669794995676!5m2!1sid!2sid', NULL, '2022-11-03 21:46:07', '2022-11-29 23:57:12'),
(33, '0226U007', 'dr. I Nyoman Suratmika, M. Kes', 'dr-i-nyoman-suratmika-m-kes', '16.00-22.00 SETIAP HARI', 'nodata', 'Tabanan', 'Desa Gubug', 'Kabupaten Tabanan', '08123961091', 'Jl.Raya Yeh Gangga,Tanah Pegat', '0', '1', '0', '0', 'Dokter Umum', '', '2022-11-29 23:38:25', '2022-11-03 22:10:12', '2022-11-29 23:38:25'),
(34, '0226U007', 'dr. I Nyoman Suratmika, M. Kes', 'dr-i-nyoman-suratmika-m-kes', '16.00-22.00 SETIAP HARI', 'No Data', 'Tabanan', 'Desa Gubug', 'Kabupaten Tabanan', '08123961091', 'Jl.Raya Yeh Gangga,Tanah Pegat', 'No Data', '1', '0', '0', 'Dokter Umum', '', '2022-11-29 23:38:20', '2022-11-03 23:07:55', '2022-11-29 23:38:20'),
(35, '0226U009', 'dr. Made Sukamertha, Sh. M. Kes', 'dr-made-sukamertha-sh-m-kes', '15.00-21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Kerambitan', 'Desa Timpag', 'Kabupaten Tabanan', '0361813329', 'Ds. Timpag Kerambitan', '0', '1', '0', '55', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.079410796751!2d115.08942807472043!3d-8.491659991549781!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6708f8a717eb55b0!2zOMKwMjknMzAuMCJTIDExNcKwMDUnMzEuMiJF!5e0!3m2!1sid!2sid!4v1669795405108!5m2!1sid!2sid', NULL, '2022-11-03 23:13:04', '2022-11-30 00:03:47'),
(36, '0226U011', 'dr. I Ketut Sumiarta, M. Kes', 'dr-i-ketut-sumiarta-m-kes', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kerambitan', 'Desa Kerambitan', 'Kabupaten Tabanan', '08123659799', 'Br. Wani Kerambitan', '0', '1', '0', '86.224', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.4605046967017!2d115.07491191460379!3d-8.551638493852879!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2308e118fcccd%3A0xf081690e3fc1f8f0!2sDokter%20I%20Ketut%20Sumiarta.%20MKes!5e0!3m2!1sid!2sid!4v1672838266938!5m2!1sid!2sid', NULL, '2022-11-03 23:59:45', '2023-01-04 05:18:01'),
(37, '0226U012', 'dr. Ida Bagus Wisnu Wardana', 'dr-ida-bagus-wisnu-wardana', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Marga', 'Desa Peken belayu', 'Kabupaten Tabanan', '081338440884', 'Br. Peken Belayu, Marga', 'No Data', '1', '0', '41', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.8223159618833!2d115.1630457747207!3d-8.516626091525648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b6b516f9aad%3A0x34177261e732d132!2sDOKEL%20dr.%20IB.Wisnu%20Wardana%2CM.Kes!5e0!3m2!1sid!2sid!4v1669796083751!5m2!1sid!2sid', NULL, '2022-11-04 00:00:46', '2022-11-30 00:15:02'),
(38, '0226U013', 'dr. I Wayan Suarnaya, M.Kes', 'dr-i-wayan-suarnaya-mkes', '17.00-20.00 SETIAP HARI', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Penebel', 'Desa Jegu', 'Kabupaten Tabanan', '03617437930', 'Br. Tengah, Jegu', '0', '1', '0', '63', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.4474797881385!2d115.12742207471977!3d-8.455789991584407!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4e2aa1c4d2631ce4!2zOMKwMjcnMjAuOCJTIDExNcKwMDcnNDguMCJF!5e0!3m2!1sid!2sid!4v1669796415168!5m2!1sid!2sid', NULL, '2022-11-04 00:01:47', '2022-11-30 00:20:33'),
(39, '0226U014', 'dr. I Nyoman Susila', 'dr-i-nyoman-susila', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan WIlayah Tabanan', 'Selemadeg Timur', 'Desa Bantas', 'Kabupaten Tabanan', '08123947110', 'Br. Bunut Puun, Ds. Bantas', '0', '1', '0', '73', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9744641935085!2d115.06142807472047!3d-8.501859991539934!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdb042b5c5594c158!2zOMKwMzAnMDYuNyJTIDExNcKwMDMnNTAuNCJF!5e0!3m2!1sid!2sid!4v1669796628199!5m2!1sid!2sid', NULL, '2022-11-04 00:02:34', '2022-11-30 00:24:10'),
(40, '0226U016', 'dr. I Gst Agung Gde Bayupasti', 'dr-i-gst-agung-gde-bayupasti', '15.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Selemadeg', 'Desa Bajera', 'Kabupaten Tabanan', '08124627772', 'Br. Bajera Kaja, Bajera', '0', '1', '0', '72.107', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d452.31236294388276!2d115.0248150274156!3d-8.499310347335324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe8510f9875f28112!2zOMKwMjknNTcuNiJTIDExNcKwMDEnMzAuMCJF!5e0!3m2!1sid!2sid!4v1672838581835!5m2!1sid!2sid', NULL, '2022-11-04 00:03:20', '2023-01-04 05:23:21'),
(41, '0226U018', 'dr. I Wayan Muliana', 'dr-i-wayan-muliana', '17.00 - 22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Kediri', 'Kabupaten Tabanan', '081338564677', 'Jl. Imam Bonjol No.7 Br. Panti', '0', '1', '0', '77.974', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.350945392888!2d115.13417041460391!3d-8.56221249384553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b93df471efd%3A0x94e996a931c90d9f!2sPraktek%20Dokter%20Umum%20Dr.%20I%20Wayan%20Muliana!5e0!3m2!1sid!2sid!4v1672839340516!5m2!1sid!2sid', NULL, '2022-11-04 00:04:12', '2023-01-04 05:35:58'),
(42, '0226U023', 'dr. I Gusti Nengah Suradnya, M.Kes', 'dr-i-gusti-nengah-suradnya-mkes', '15.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Denbantas', 'Kabupaten Tabanan', '03619133411', 'Jl. Batukaru No 76', '0', '1', '0', '53.574', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d993.6077582430257!2d115.13046900529925!3d-8.515178795974135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23bc7f04e765b%3A0x5a434a6befcdd200!2sdr%20I%20Gusti%20Nengah%20Suradnya!5e0!3m2!1sid!2sid!4v1672840052549!5m2!1sid!2sid', NULL, '2022-11-04 00:05:27', '2023-01-04 05:47:45'),
(43, '0226U024', 'dr. Ni Luh Made Sri Wulandari Damayanthi', 'dr-ni-luh-made-sri-wulandari-damayanthi', '17.00-23.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Banjar Anyar', 'Kabupaten Tabanan', '0361811432 / 081238853378', 'Desa Banjar Jagasatru , Kediri', '0', '1', '0', '68', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.4279131132494!2d115.13793927472113!3d-8.55478539148881!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a355b2c3b6d%3A0xd499794224ce9abc!2sDr.Ni%20Luh%20Made%20Sri%20Wulandari%20D!5e0!3m2!1sid!2sid!4v1669797266276!5m2!1sid!2sid', NULL, '2022-11-04 00:06:19', '2022-11-30 00:34:50'),
(44, '0226U026', 'dr. I Dewa Gede Teresnadika', 'dr-i-dewa-gede-teresnadika', 'SENIN -SABTU 16.00 - 22.00  & HARI MINGGU/LIBUR 17.00-21.00', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dauh Peken', 'Kabupaten Tabanan', '0361814092', 'Jl.Pulau Batam No. 36 Pesiapan', '0', '1', '0', '85.863', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.7384310667544!2d115.11179220439591!3d-8.536340532278913!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b6bf77e5c39%3A0xedb4d3b2ac9c00a4!2sPraktek%20dr%20I%20Dewa%20Gede%20Teresnadika!5e0!3m2!1sid!2sid!4v1672887436294!5m2!1sid!2sid', NULL, '2022-11-04 00:07:31', '2023-01-04 18:57:39'),
(45, '0226U027', 'dr. Ketut Rumasta Giri,M.Kes', 'dr-ketut-rumasta-girimkes', '08.00-20.00 SENIN -SABTU & 09.00-17.00 HARI MINGGU/LIBUR', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dauh Peken', 'Kabupaten Tabanan', '0361810022', 'Jl.P.Nias Gg Xvi/I Br.Dauhpala', '0', '1', '0', '82.915', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d777.2695808037005!2d115.11302212537228!3d-8.540228269776698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x57bbb82c90b927e!2zOMKwMzInMjQuNSJTIDExNcKwMDYnNDYuOCJF!5e0!3m2!1sid!2sid!4v1672888604945!5m2!1sid!2sid', NULL, '2022-11-04 00:08:26', '2023-01-04 19:17:11'),
(46, '0226U028', 'dr. I Wayan Panca', 'dr-i-wayan-panca', '14.00-17.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dajan Peken', 'Kabupaten Tabanan', '03617843035', 'Jl. Camar No.7, Pasekan Blodan', '0', '1', '0', '62', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126253.69611172563!2d115.05811197714931!3d-8.55477666656464!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23af6c3b93aa9%3A0x3443c6587c3305b0!2sdr.%20I%20WAYAN%20PANCA!5e0!3m2!1sid!2sid!4v1669797360259!5m2!1sid!2sid', NULL, '2022-11-04 00:09:12', '2022-11-30 00:36:37'),
(47, '0226U029', 'dr. I Ketut Serinata', 'dr-i-ketut-serinata', '16.00-21.00 SETIAP HARI', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dauh Peken', 'Kabupaten Tabanan', '0816295049', 'Jl Kebo Iwa, Bongan Pala', '0', '1', '0', '78', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.3901945726548!2d115.11753977472118!3d-8.558425891485287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a3e518e3141%3A0x70af6270e3cb2eec!2sPraktek%20Umum%20Dr.I%20Ketut%20Serinata!5e0!3m2!1sid!2sid!4v1669797461061!5m2!1sid!2sid', NULL, '2022-11-04 00:10:00', '2022-11-30 00:38:06'),
(48, '0226U030', 'dr. Ni Nyoman Erayati', 'dr-ni-nyoman-erayati', '16.00-20.00 SENIN -SABTU & 18.00-20.00  HARI MINGGU/LIBUR', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Delod Peken', 'Kabupaten Tabanan', '08123829321', 'Jl. Melati No. 13', '0', '1', '0', '59', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.577318794633!2d115.12342407472103!3d-8.540349991502792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc552f09713a81d75!2zOMKwMzInMjUuMyJTIDExNcKwMDcnMzMuNiJF!5e0!3m2!1sid!2sid!4v1669797814182!5m2!1sid!2sid', NULL, '2022-11-04 00:11:38', '2022-11-30 00:43:49'),
(49, '0226U031', 'dr. I Made Muliarta', 'dr-i-made-muliarta', '15.00-21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Pupuan', 'Desa Pupuan', 'Kabupaten Tabanan', '0811386947', 'Desa Pujung, Kec. Pupuan', '0', '2', '0', '74.725', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d364.38505839832317!2d115.02930177130268!3d-8.326276568719434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd1876ecf034001%3A0xaf9a21a25cd46bd6!2sdokter%20Muliarta!5e0!3m2!1sid!2sid!4v1672893936577!5m2!1sid!2sid', NULL, '2022-11-04 00:12:37', '2023-01-04 20:45:52'),
(50, '0226U032', 'dr. I Wayan Murdita, M. Kes', 'dr-i-wayan-murdita-m-kes', '16.00-22.00 SENIN-SABTU&HARI LIBUR KECUALI HARI MINGGU', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Beraban', 'Kabupaten Tabanan', '08123994088', 'Jl. Raya Kapal - Munggu No.88', '0', '1', '0', '74', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.2835568812116!2d115.17842507472147!3d-8.568709991475403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x32e02e17bd6c22ed!2zOMKwMzQnMDcuNCJTIDExNcKwMTAnNTEuNiJF!5e0!3m2!1sid!2sid!4v1669797947703!5m2!1sid!2sid', NULL, '2022-11-04 00:13:22', '2022-11-30 00:46:13'),
(51, '0226U033', 'dr. I Gede Sudiarta', 'dr-i-gede-sudiarta', '16.00-22.00 SENIN-SABTU&08.00-12.00 HARI LIBUR KECUALI HARI MINGGU', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Bongan', 'Kabupaten Tabanan', '08123670429', 'Jl.Garuda, Komp Perum Graha Pe', '0', '1', '0', '68', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.615759094518!2d115.19342407471974!3d-8.439339991600319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2c62985588b2f548!2zOMKwMjYnMjEuNiJTIDExNcKwMTEnNDUuNiJF!5e0!3m2!1sid!2sid!4v1669798120438!5m2!1sid!2sid', NULL, '2022-11-04 00:14:14', '2022-11-30 00:49:06'),
(52, '0226U035', 'dr. Ni Made Yasmi', 'dr-ni-made-yasmi', '16.00-22.00 SENIN-SABTU& 08.00-13.00 HARI MINGGU/LIBUR', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Beraban', 'Kabupaten Tabanan', '085739744401', 'Br. Gegelang Beraban', '0', '1', '0', '69', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.9742883306976!2d115.10357307472164!3d-8.598466691446683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd239c2cb0c73cb%3A0x685ba03dfdcd41f8!2sPraktek%20Dr%20Ni%20Made%20Yasmi!5e0!3m2!1sid!2sid!4v1669798272471!5m2!1sid!2sid', NULL, '2022-11-04 00:14:59', '2022-11-30 00:51:31'),
(53, '0226U036', 'dr. Putu Gede Restudiartha', 'dr-putu-gede-restudiartha', '07.00-14.00 SENIN-SABTU& 07.00-10.00 HARI MINGGU/LIBUR', 'nodata', 'Pupuan', 'Pupuan', 'Kabupaten Tabanan', '081936247800', 'Br Dinas Pupuan', '0', '1', '0', '64.594', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15791.4019878371!2d115.0076836!3d-8.3176514!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x3723ec6b07cc2764!2sPraktek%20dokter%20Dr%20Putu%20Gede%20Restudiartha!5e0!3m2!1sid!2sid!4v1674807057836!5m2!1sid!2sid', NULL, '2022-11-04 00:15:43', '2023-01-27 00:13:54'),
(54, '0226U037', 'dr. Ni Luh Putu Sri Wahyuni', 'dr-ni-luh-putu-sri-wahyuni', '08.00-20.00 SENIN -SABTU', 'FKTP Wilayah Tabanan', 'Kediri', 'Desa Beraban<', 'Kabupaten Tabanan', '081236037119', 'Jl. Raya Tanah Lot No 86 Banja', '0', '1', '0', '80.498', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3944.931367879315!2d115.10426855026246!3d-8.602588269266679!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd259e766a2f74f33!2sPraktek%20Dokter%20Umum%20Putu%20Sri%20Wahyuni!5e0!3m2!1sid!2sid!4v1674807601067!5m2!1sid!2sid', NULL, '2022-11-04 00:17:37', '2023-01-27 00:21:41'),
(55, '0226U041', 'dr. I Nyoman Suarya', 'dr-i-nyoman-suarya', '15.00-21.30(KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Gubug', 'Kabupaten Tabanan', '081338024102', 'Br. Curah, Desa Gubug', '0', '1', '0', '73', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.3978079450458!2d115.08536017472142!3d-8.557691191486049!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2314fcc372745%3A0xcc8f51082d8bee9b!2sDokter%20i%20nyoman%20suarya!5e0!3m2!1sid!2sid!4v1669798591332!5m2!1sid!2sid', NULL, '2022-11-04 00:18:23', '2022-11-30 00:56:48'),
(56, '0226U043', 'dr. Putu Eka Prayastiti Kefani', 'dr-putu-eka-prayastiti-kefani', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Banjar Anyar', 'Kabupaten Tabanan', '08174741369', 'Jl Tendean Btn Tanah Bang', '0', '1', '0', '80', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.6076135745684!2d115.14442807472093!3d-8.537419991505587!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xe83994ab67bb4d3e!2zOMKwMzInMTQuNyJTIDExNcKwMDgnNDkuMiJF!5e0!3m2!1sid!2sid!4v1669862009880!5m2!1sid!2sid', NULL, '2022-11-04 00:19:20', '2022-11-30 18:33:46'),
(57, '0226U044', 'dr. I Nyoman  Rastika', 'dr-i-nyoman-rastika', '07.00-22.00 (SETIAP HARI)', 'nodata', 'Baturiti', 'Desa Baturiti<', 'Kabupaten Tabanan', '081239241725', 'Jl Raya Meliling', '0', '1', '0', '83.371', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2595.6709031095747!2d115.08208954732503!3d-8.530390838318993!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9797664dff495a98!2sPraktek%20Dokter%20Umum%20I%20Nyoman%20Rastika!5e0!3m2!1sid!2sid!4v1674808132034!5m2!1sid!2sid', NULL, '2022-11-04 00:20:19', '2023-01-27 00:29:18'),
(58, '0226U046', 'dr. I Made Khuntarana', 'dr-i-made-khuntarana', '08.00-14.00   (KECUALI HARI LIBUR)', 'nodata', 'Pupuan', 'Desa Pupuan<', 'Kabupaten Tabanan', '082144658998', 'Br Dinas Kayupadi', '0', '1', '0', '72.727', 'Dokter Umum', NULL, NULL, '2022-11-04 00:20:59', '2023-01-27 00:32:00'),
(59, '0226U048', 'dr. Ni Wayan Lusidarini', 'dr-ni-wayan-lusidarini', '16.00-22.00 SENIN-SABTU& 16.00-22.00 HARI MINGGU/LIBUR', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Penebel', 'Desa Senganan', 'Kabupaten Tabanan', '082340339141', 'Jalan Raya Penebel-Senganan', '0', '1', '0', '75', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3947.2203931297804!2d115.14942507471899!3d-8.379969991657683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1dd8b8e829a7a099!2zOMKwMjInNDcuOSJTIDExNcKwMDknMDcuMiJF!5e0!3m2!1sid!2sid!4v1669862296264!5m2!1sid!2sid', NULL, '2022-11-04 00:21:50', '2022-11-30 18:38:43'),
(60, '0226U050', 'dr. I Made Restu Widiana S.Ked', 'dr-i-made-restu-widiana-sked', '16.00 - 22.00 (SENIN - MINGGU)', 'nodata', 'Baturiti', 'Desa Candi Kuning<', 'Kabupaten Tabanan', '081246079697', 'Jl. Kebun Raya', '0', '2', '0', '76.758', 'Dokter Umum', NULL, NULL, '2022-11-04 00:22:30', '2023-01-27 00:38:17'),
(61, '0226U051', 'dr. Dewa Ayu Putu Widya Anita Sari', 'dr-dewa-ayu-putu-widya-anita-sari', '15.00-21.00(SENIN-MINGGU)', 'nodata', 'Baturiti', 'Desa Apuan<', 'Kabupaten Tabanan', '081337277744', 'Br. Apuan', '0', '1', '0', '78.016', 'Dokter Umum', NULL, NULL, '2022-11-04 00:23:14', '2023-01-27 00:40:36'),
(62, '0226U052', 'dr. Aa Ngurah Putra Wiradana', 'dr-aa-ngurah-putra-wiradana', '16.00-22.00 (SENIN-MINGGU)', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Kediri', 'Desa Banjar Anyar', 'Kabupaten Tabanan', '081338544055', 'Perumahan Bukit Sanggulan Indah Jl Tukad Yeh Ho 133', '0', '1', '0', '59', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d246.60227729291103!2d115.13985807061566!3d-8.534631398979258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x40d17ac93d843edc!2zOMKwMzInMDQuNiJTIDExNcKwMDgnMjQuMCJF!5e0!3m2!1sid!2sid!4v1669862563666!5m2!1sid!2sid', NULL, '2022-11-04 00:24:05', '2022-11-30 18:43:03'),
(63, '0226U053', 'dr. I Made Agus Sudaryana', 'dr-i-made-agus-sudaryana', 'Setiap Hari (14.30-22.30)', 'nodata', 'Kediri', 'Desa Kediri', 'Kabupaten Tabanan', '082144593344', 'Apotek Adi Husada Jl. Pulau Bawean No. 02 Br Jagasatru, Kediri, Kab Tabanan', '0', '5', '0', '0', 'Dokter Umum', '', NULL, '2022-11-04 00:25:21', '2022-11-04 00:25:21'),
(64, '0226U054', 'dr. Ni Made Suriati, M. Biomed', 'dr-ni-made-suriati-m-biomed', 'Senin s.d Sabtu pukul 10.00 s.d 20.00 WITA', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Dauh Peken', 'Kabupaten Tabanan', '082147911294', 'Jl. Pulau Batam No 9E Pesiapan Tabanan', '0', '2', '0', '69', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d530.1298136244425!2d115.1158584309382!3d-8.536613092176923!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc2c0e21a8c7f79ac!2sPraktek%20Dokter%20Made%20Suriati!5e0!3m2!1sid!2sid!4v1669862982407!5m2!1sid!2sid', NULL, '2022-11-04 00:26:04', '2022-11-30 18:50:04'),
(65, '0226U055', 'dr. Ni Komang Trisna Dewi', 'dr-ni-komang-trisna-dewi', 'SETIAP HARI PUKUL 06.00 - 08.00 DAN 16.00- 21.00 WITA', 'FKTP BPJS Kesehatan Wilayah Tabanan', 'Tabanan', 'Desa Sudimara', 'Kabupaten Tabanan', '083114590454', 'Br. Cengolo, Desa Sudimara, Tabanan', '0', '1', '0', '72', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d377.53848213627197!2d115.08773756123006!3d-8.573149177139946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9b4b87c341ae07ec!2zOMKwMzQnMjIuOCJTIDExNcKwMDUnMTYuNyJF!5e0!3m2!1sid!2sid!4v1669865037866!5m2!1sid!2sid', NULL, '2022-11-04 00:27:36', '2022-11-30 19:24:18'),
(66, '02270001', 'Klinik Polres Badung (POL)', 'klinik-polres-badung-pol', '08.00-20.00  (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Mengwitani', 'Kabupaten Badung', '03618361782', 'Jl. Ngurah Rai No.1', '0', '2', '1', '73', 'Klinik Polri', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d777.2280666942538!2d115.17188636435341!3d-8.56058243887997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23bef3e95c9f3%3A0xcc9ee64ef1a50df0!2sKLINIK%20POLRES%20BADUNG!5e0!3m2!1sid!2sid!4v1669866172769!5m2!1sid!2sid', NULL, '2022-11-04 00:28:45', '2022-11-30 19:43:11'),
(67, '02270103', 'Puskesmas Abiansemal IV', 'puskesmas-abiansemal-iv', '07.00-14.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Abiansemal', 'Desa Taman<', 'Kabupaten Badung', '03618578644', 'Jl. Tunjung Br. Ketogan Ds.Taman Kec.Abiansemal', '0', '4', '2', '89.882', 'Puskesmas', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1288.670406840475!2d115.2369141211377!3d-8.479297871029123!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd222d7c5462b77%3A0xd0439c4ec7ab7392!2sPuskesmas%20abian%20semal%20IV!5e0!3m2!1sid!2sid!4v1674809099394!5m2!1sid!2sid', NULL, '2022-11-04 00:29:46', '2023-01-27 00:45:45'),
(68, '0227B002', 'BP Gangga Medika', 'bp-gangga-medika', '24 Jam', 'nodata', 'Kuta Selatan', 'Jimbaran', 'Kabupaten Badung', '0361-8952822', 'Jl. Bukit Hijau Lingkungan Mekarsari Kelurahan Jimbaran', '0', '6', '2', '86.720', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3106.938714057782!2d115.1593297297046!3d-8.798910716626375!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4fcfca3e5ff33ea8!2sKlinik%20Gangga%20Medika!5e0!3m2!1sid!2sid!4v1674809353977!5m2!1sid!2sid', NULL, '2022-11-04 00:30:32', '2023-01-27 00:49:47'),
(69, '0227B004', 'Klinik Panti Swasti', 'klinik-panti-swasti', '24 Jam', 'No Data', 'Mengwi', 'Desa Abian base', 'Kabupaten Badung', '0361-9006243', 'Jl. Raya Tangeb No.25', '0', '3', '2', '0', 'Klinik Swasta', '', NULL, '2022-11-04 00:31:18', '2022-11-04 00:31:18'),
(70, '0227B008', 'Klinik Dwi Karya Usadha', 'klinik-dwi-karya-usadha', '08.00-14.00 & 16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan', 'Kabupaten Badung', '085237238866', 'Jalan Kerobokan Lingkungan Ban', '0', '3', '1', '76', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.4038907348954!2d115.16534137472243!3d-8.653081891393997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238a0592af661%3A0xb3d3d16440f1b1bc!2sKlinik%20Dwi%20Karya%20Usadha!5e0!3m2!1sid!2sid!4v1669866546165!5m2!1sid!2sid', NULL, '2022-11-04 00:32:35', '2022-11-30 19:49:25'),
(71, '0227B010', 'Klinik Tunas Harapan', 'klinik-tunas-harapan', '24 Jam', 'Merupakan salah satu laboratorium kesehatan/klinik di Kabupaten Badung. Lab ini melayani pengujian sample dan pemeriksaan spesimen klinik yang dapat membantu dalam mendeteksi / mendiagnosis penyakit dan lainnya.\r\n\r\nSegera kunjungi laboratorium kesehatan terdekat ini untuk informasi lebih lanjut seperti layanan yang tersedia, kemampuan pelayanan rapid tes, swab antigen, PCR dan lainnya.', 'Mengwi', 'Desa Werdi Bhuana', 'Kabupaten Badung', '0361829341', 'Br. Sayan Baleran Jl. Denpasar', '0', '5', '1', '89', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.9993190278296!2d115.1817903747205!3d-8.499445391542245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b57403e3773%3A0x17e9d8057c65a6d!2sKlinik%20Pratama%20Tunas%20Harapan%20%26%20Laboratorium!5e0!3m2!1sid!2sid!4v1669866856857!5m2!1sid!2sid', NULL, '2022-11-04 00:33:18', '2022-11-30 19:57:09'),
(72, '0227B011', 'Klinik Pratama Sadajiwa', 'klinik-pratama-sadajiwa', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Sembung', 'Kabupaten Badung', '0361829888', 'Banjar Pasekan, Desa Sembung', '0', '4', '0', '69', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d777.4149152289978!2d115.18561639433695!3d-8.468588952347238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x68daf79b8a9e226a!2zOMKwMjgnMDYuMCJTIDExNcKwMTEnMDkuNiJF!5e0!3m2!1sid!2sid!4v1669873523846!5m2!1sid!2sid', NULL, '2022-11-04 00:34:05', '2022-11-30 21:45:47'),
(73, '0227B012', 'Klinik Melia Bali Indonesia', 'klinik-melia-bali-indonesia', 'SENIN-JUMAT 08.00-23.00&SABTU-MINGGU 10.00-18.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361-771510', 'Btdc Lot 1 Nusa Dua', '0', '3', '0', '71', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3942.855962271626!2d115.23042707472409!3d-8.799599991252846!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7c47abade863f1e1!2zOMKwNDcnNTguNiJTIDExNcKwMTMnNTguOCJF!5e0!3m2!1sid!2sid!4v1669873816381!5m2!1sid!2sid', NULL, '2022-11-04 00:34:53', '2022-11-30 21:50:37'),
(74, '0227B013', 'Klinik Permana', 'klinik-permana', '07.00-22.00 SETIAP HARI', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan', 'Kabupaten Badung', '081238508463', 'Jl. Raya Kesambi Kerobokan', '0', '2', '1', '82', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d63108.60829989628!2d115.16801864625243!3d-8.664134806208356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d-8.6710555!2d115.2298938!4m5!1s0x2dd238a719d4e581%3A0xda2c72c0f66cc43c!2sKLINIK%20PERMANA!3m2!1d-8.651095399999999!2d115.172761!5e0!3m2!1sen!2sid!4v1669786587326!5m2!1sen!2sid', NULL, '2022-11-04 00:35:45', '2022-11-30 21:56:15'),
(75, '0227B014', 'Klinik Ganecadha', 'klinik-ganecadha', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Mengwitani', 'Kabupaten Badung', '0361-7884643 / 072266423243', 'Jl. Raya Terminal Mangupura,', '0', '2', '1', '62', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d63116.56844631774!2d115.15793164616494!3d-8.616578414690304!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d-8.6710555!2d115.2298938!4m5!1s0x2dd23be8265c9567%3A0xcebf3b725b3ed386!2sKLINIK%20GANECADHA!3m2!1d-8.560596!2d115.16507399999999!5e0!3m2!1sen!2sid!4v1669786622097!5m2!1sen!2sid', NULL, '2022-11-04 00:36:45', '2022-11-30 22:00:24'),
(76, '0227B015', 'Klinik Rahayu', 'klinik-rahayu', '08.00-21.00 SETIAP HARI', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361-774960', 'Jl. By Pass Ngurah Rai No.778x', 'No Data', '2', '1', '80', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1657.8277998530614!2d115.20048972551491!3d-8.786014119532778!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2436f0dd98d51%3A0x9b1b2e8807e759d8!2sKlinik%20Rahayu!5e0!3m2!1sid!2sid!4v1669874872599!5m2!1sid!2sid', NULL, '2022-11-04 00:37:43', '2022-11-30 22:09:58'),
(77, '0227B016', 'Klinik Prima Medika Nusa Dua', 'klinik-prima-medika-nusa-dua', '24 Jam', 'NO DATA', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361-770521 / 081805520079', 'Jl. By Pass Ngurah Rai No 81', '0', '11', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-04 00:38:40', '2022-11-04 00:38:40'),
(78, '0227B017', 'Klinik Cahaya Bunda', 'klinik-cahaya-bunda', '09.00-21.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta', 'Desa Tuban', 'Kabupaten Badung', '0361-754119 / 081353158787', 'Jl. Raya Tuban No.333x Tuban,', '0', '3', '1', '83', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53052.53342214835!2d115.14840837317705!3d-8.771674687651029!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd244033b748751%3A0x27409abf6905aa25!2sKlinik%20Cahaya%20Bunda%20(Bidan%20Putu%20Djati)!5e0!3m2!1sid!2sid!4v1669875798462!5m2!1sid!2sid', NULL, '2022-11-04 00:39:54', '2022-11-30 22:24:12'),
(79, '0227B018', 'Klinik Permata Husada', 'klinik-permata-husada', 'SENIN - SABTU 09.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Abiansemal', 'Desa Sangeh', 'Kabupaten Badung', '0811393376', 'Jl Raya Sangeh Abiansemal', '0', '2', '1', '79', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d617.0057518139603!2d115.20967387580433!3d-8.48666288871606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd223a2342848bf%3A0xc016fc983c60ac72!2sFISIOTERAPI%20KLINIK%20PERMATA%20HUSADA%20SANGEH!5e0!3m2!1sid!2sid!4v1669876290823!5m2!1sid!2sid', NULL, '2022-11-04 00:41:27', '2022-11-30 22:32:18'),
(80, '0227B019', 'Klinik Bhawani Husada', 'klinik-bhawani-husada', 'SENIN - SABTU 09.00 - 21.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Mengwitani', 'Kabupaten Badung', '081338199599', 'Jl Raya Mengwitani No 55', 'No Data', '3', '1', '75', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2295.650099974166!2d115.16016588399667!3d-8.562450091617437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23bfbae12b09b%3A0x3c022b2079d459a4!2sFisio%20Art%20Bali%20(Klinik%20Bhawani%20Husada)!5e0!3m2!1sid!2sid!4v1669876640485!5m2!1sid!2sid', NULL, '2022-11-04 00:42:21', '2022-11-30 22:37:53'),
(81, '0227B022', 'Klinik Ratih', 'klinik-ratih', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '081338286004 / 085737301424', 'Jl. Raya Padonan, No 108', '0', '4', '1', '86', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1916.1931573665454!2d115.1608849561209!3d-8.626333523612468!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238eb14e0b075%3A0x708fa776972025fa!2sKlinik%20Ratih!5e0!3m2!1sid!2sid!4v1669876756899!5m2!1sid!2sid', NULL, '2022-11-04 00:43:14', '2022-11-30 22:39:40'),
(82, '0227B024', 'Suka Klinik', 'suka-klinik', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '0361-419129/087861661920', 'Perum Dalung Permai, Jl. Tegal Permai No.88', 'No Data', '4', '2', '73', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.7445592002929!2d115.17152116566837!3d-8.631728848881073!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238c7247e5045%3A0x176d28a789eeb6d8!2sSUKA%20KLINIK%20%26%20DENTAL!5e0!3m2!1sid!2sid!4v1669877033885!5m2!1sid!2sid', NULL, '2022-11-04 00:43:58', '2022-11-30 22:44:48'),
(83, '0227B025', 'Klinik Kulhen', 'klinik-kulhen', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '08786220880', 'Jalan Raya Padangluwih No 187', 'No Data', '7', '1', '81.228', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.5953889293564!2d115.17316967472215!3d-8.634784291411664!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238b8342185ab%3A0x6477fd7c31edd1b4!2sKulhen%20Farma!5e0!3m2!1sid!2sid!4v1669877623174!5m2!1sid!2sid', NULL, '2022-11-04 00:44:52', '2022-11-30 22:54:11');
INSERT INTO `faskes_categories` (`id`, `kode_fktp`, `title`, `slug`, `service_hour`, `about`, `kecamatan`, `desa`, `city`, `no_telp`, `address`, `perawat`, `dokter_umum`, `dokter_gigi`, `rating`, `jenis_faskes`, `gmap_embed`, `deleted_at`, `created_at`, `updated_at`) VALUES
(84, '0227B026', 'Klinik Sai Husada', 'klinik-sai-husada', 'HARI KERJA 09.00 -21.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Abiansemal', 'Desa Sedang', 'Kabupaten Badung', '081703774633', 'Jalan Sampreg No 3 Sedang', 'No Data', '4', '2', '77.481', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.2839874576466!2d115.2343463747214!3d-8.568668491475435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23e7fe4282725%3A0x29d3151aabe409e!2sKlinik%20Sai%20Husada!5e0!3m2!1sid!2sid!4v1669877839341!5m2!1sid!2sid', NULL, '2022-11-04 00:45:59', '2022-11-30 22:57:40'),
(85, '0227B027', 'Klinik Puri Medical', 'klinik-puri-medical', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '085100103103', 'Jalan Batu Belig No 8', 'No Data', '4', '2', '82.998', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.2107587546543!2d115.15704027472256!3d-8.671496791376248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2476b87c74739%3A0xb5576e998f39ac57!2sPuri%20Medical!5e0!3m2!1sid!2sid!4v1669877996345!5m2!1sid!2sid', NULL, '2022-11-04 00:46:46', '2022-11-30 23:00:22'),
(86, '0227B028', 'Klinik Sidhi Sai', 'klinik-sidhi-sai', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Abiansemal', 'Desa Dauh Ye Cani', 'Kabupaten Badung', '03617992057 / 03618943454', 'Abiansemal Dauh Yeh Cani', 'No Data', '4', '1', '91.063', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.696713638987!2d115.19581917712252!3d-8.528796769633074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23c87e708e0f3%3A0x74f52cb0d3520cad!2sKLINIK%20SIDHI%20SAI!5e0!3m2!1sid!2sid!4v1669878176910!5m2!1sid!2sid', NULL, '2022-11-04 00:47:41', '2022-11-30 23:03:13'),
(87, '0227B029', 'Klinik Adi Medika', 'klinik-adi-medika', 'SETIAP HARI 08.00-22.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '08123999407', 'Jl.Raya Canggu No.999x', 'No Data', '2', '3', '82.370', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3944.5374050793257!2d115.1500960747221!3d-8.640328691406298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2388e1848768d%3A0x7c3655fab7bd23f4!2sKlinik%20Adi%20Medika!5e0!3m2!1sid!2sid!4v1669878468173!5m2!1sid!2sid', NULL, '2022-11-04 00:48:26', '2022-11-30 23:08:04'),
(88, '0227B030', 'Klinik Putu Parwata', 'klinik-putu-parwata', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '085103075534', 'Jl Bhineka Nusa Kangin 1x Dalung', 'No Data', '3', '1', '84.196', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31556.299286665737!2d115.13207134293664!3d-8.640328141395983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238c37d58ff79%3A0x512ea870e8a6a112!2sKLINIK%20PUTU%20PARWATA%20%7C%20Swab%20Test%20Bali!5e0!3m2!1sid!2sid!4v1669878878831!5m2!1sid!2sid', NULL, '2022-11-04 00:49:03', '2022-11-30 23:15:05'),
(89, '0227B031', 'Klinik Pratama Prima', 'klinik-pratama-prima', '24 JAM', 'nodata', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '03614740055', 'Jl. Subak Sari 90 A, Br. Dinas Tegal Gundul', '0', '6', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-04 00:49:43', '2022-11-04 00:49:43'),
(90, '0227B032', 'Klinik Universitas Udayana', 'klinik-universitas-udayana', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '08980751251', 'Jln. Kampus Unud Bukit Jimbaran', 'No Data', '4', '2', '83.457', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126193.8153951622!2d115.11452462965505!3d-8.733571357032925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd245fce407e5ab%3A0x304525a32474dbab!2sKlinik%20Universitas%20Udayana!5e0!3m2!1sid!2sid!4v1669879530252!5m2!1sid!2sid', NULL, '2022-11-04 00:50:31', '2022-11-30 23:26:04'),
(91, '0227B033', 'Klinik Rumah Bersalin Gandi', 'klinik-rumah-bersalin-gandi', 'SETIAP HARI 08.00-22.00', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Mengwi', 'Kabupaten Badung', '0361-4790038', 'Jl. I Gusti Ngurah Rai No. 102, Mengwitani', 'No Data', '3', '1', '75.407', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.7015439175342!2d115.17221520256763!3d-8.56229272679904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23be5f4fe3697%3A0x8b3c7449e351b07d!2sKlinik%20%26%20Rumah%20Bersalin%20Gandi!5e0!3m2!1sid!2sid!4v1669879749890!5m2!1sid!2sid', NULL, '2022-11-04 00:51:32', '2022-11-30 23:29:26'),
(92, '0227B034', 'Klinik MBM Marga Ayu', 'klinik-mbm-marga-ayu', 'SENIN - JUMAT 08.00 - 20.00 & SABTU 08.00 - 12.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '0361-9079333', 'Br Untal-Untal, Desa Dalung, Kecamatan Kuta Utara', 'No Data', '2', '1', '81.107', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d777.1267237270009!2d115.17799823882942!3d-8.610069811880237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2394be3e8d5cd%3A0xe37957fffe449c0f!2sKlinik%20MBM%20Marga%20Ayu!5e0!3m2!1sid!2sid!4v1669879985589!5m2!1sid!2sid', NULL, '2022-11-04 00:52:31', '2022-11-30 23:33:35'),
(93, '0227B035', 'Klinik Pratama Payana Medica', 'klinik-pratama-payana-medica', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Petang', 'Desa Carangsari', 'Kabupaten Badung', '0819-1644-3840', 'Jl. I Gusti Ngurah Rai, Banjar Samuan Kawan, Desa Carangsari, Kecamatan Petang', 'No Data', '1', '2', '79.776', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d507.7568890346078!2d115.21881138380253!3d-8.458824988194715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xbfaf931f8ee118d9!2zOMKwMjcnMzEuNSJTIDExNcKwMTMnMDguNCJF!5e0!3m2!1sid!2sid!4v1669880351723!5m2!1sid!2sid', NULL, '2022-11-04 00:53:39', '2022-11-30 23:39:23'),
(94, '0227B036', 'Klinik Takenoko', 'klinik-takenoko', 'SETIAP HARI 08.00-20.00', 'no data', 'Kuta Selatan', 'Desa Seminyak', 'Kabupaten Badung', '0361- 4727288 / 0811399459', 'Jl. Sunset Road No. 77A Ruko No1 Kuta', '0', '2', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-04 00:54:34', '2022-11-04 00:54:34'),
(95, '0227B037', 'Klinik Pratama Bayu Suta', 'klinik-pratama-bayu-suta', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '081339503310', 'Jl. Dharmawangsa No 55 Kampial', 'No Data', '4', '1', '83.079', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d451.9435191666196!2d115.201398324953!3d-8.806456505415143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2438066c3f305%3A0xaf2a916e02dad217!2sKlinik%20Pratama%20Bayu%20Suta!5e0!3m2!1sid!2sid!4v1669880586618!5m2!1sid!2sid', NULL, '2022-11-04 00:58:21', '2022-11-30 23:43:18'),
(96, '0227B038', 'Klinik Omsa Medic Jimbaran', 'klinik-omsa-medic-jimbaran', 'Setiap Hari (08.00-20.00)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '081339387766', 'Jl. Uluwatu II No. 87', 'No Data', '3', '2', '82.863', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.4828642884731!2d115.17332864574901!3d-8.782672269768396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd245d4d5f1f4a1%3A0x61f5132a6e8c33df!2sKLINIK%20OMSA%20MEDIC%20JIMBARAN!5e0!3m2!1sid!2sid!4v1669880784705!5m2!1sid!2sid', NULL, '2022-11-04 00:59:14', '2022-11-30 23:49:02'),
(97, '0227B039', 'Siloam Clinic Mertanadi', 'siloam-clinic-mertanadi', 'SETIAP HARI PUKUL 09.00 - 21.00 WITA', 'nodata', 'Kuta', 'Desa Seminyak', 'Kabupaten Badung', '03614727871', 'Jl. Mertanadi No. 4c-Kuta', '0', '2', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-04 01:00:14', '2022-11-04 01:00:14'),
(98, '0227B040', 'Klinik Pratama Lingkar Medika', 'klinik-pratama-lingkar-medika', 'SETIAP HARI PUKUL 08.00 - 21.00 WITA', 'Klinik Lingkar Medika hadir untuk pelayanan kesehatan dasar yang preventif, kuratif dan rehabilitative bagi masyarakat modern . Kami berlokasi di sekitar area Jimbaran, Benoa , Nusa Dua dan Ungasan , Kuta Selatan.\r\n\r\nVisi kami untuk dapat berkontribusi aktif dalam layanan tingkat kesehatan masyarakat dan menjadi pilihan terdepan sebagai   Fasilitas Kesehatan tingkat pertama untuk masayarakat.\r\n \r\nDengan semangat “ Good Health, Better Life” , kami menghadirkan layanan Kesehatan yang modern, dinamis dan on demand sesuai kebutuhan masayarakat melalui  beberapa layanan unggulan kami.', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '087771514848', 'Jl. Taman Giri No. 7 Mumbul Kelurahan Benoa, Kec. Kuta Selatan Kab. Badung', 'No Data', '1', '2', '0', 'Klinik Swasta', '', NULL, '2022-11-06 19:19:04', '2022-11-06 19:19:04'),
(99, '0227G002', 'drg. Anak Agung Raka Tresna Adi', 'drg-anak-agung-raka-tresna-adi', '16.00-22.00(KECUALI HARI LIBUR)', 'Praktek Dokter AA Raka Tresna Adi terletak di Banjar, Bali.', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '03617925770 / 08123999407', 'Jl Raya Padonan No 32 Br Asema', 'No Data', '0', '1', '87.083', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d353.72402630893566!2d115.15755090557775!3d-8.638580280634148!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2395dcfba3e45%3A0xda5e510e5c4f5d94!2sPraktek%20Drg.A.A.%20Raka%20Tresna%20Adi!5e0!3m2!1sid!2sid!4v1669881243651!5m2!1sid!2sid', NULL, '2022-11-06 19:21:00', '2022-11-30 23:54:23'),
(100, '0227G008', 'drg. I Putu Agus Noharsita Putra', 'drg-i-putu-agus-noharsita-putra', '09.00-15.00 & 16.00-22.00   (SENIN-SABTU & HARI LIBUR KECUALI HARI MINGGU )', 'Faskes Tingkat Pertama BPJS Kesehatan di Kab Badung\r\n<br>\r\nAlamat : Jl. Raya Mambal Banjar Agung Mambal Abiansemal Kab Badung, Bali', 'Abiansemal', 'Desa Mambal', 'Kabupaten Badung', '03617878279', 'Jln. Raya Mambal 29', 'No Data', '0', '1', '90.375', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d452.25011901158086!2d115.21935979131847!3d-8.55191040684841!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23d74faef49eb%3A0x7acf3ee2950c4c18!2sdrg%20Agus%20Noharsita%20%2F%20Dentist!5e0!3m2!1sid!2sid!4v1669950406391!5m2!1sid!2sid', NULL, '2022-11-06 19:23:18', '2022-12-01 19:09:35'),
(101, '0227G010', 'drg. Ni Made Marhaeni', 'drg-ni-made-marhaeni', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '03617838944', 'Jl. Raya Kapal Mengwi', 'No Data', '0', '1', '92.962', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.8541434541592!2d115.17904202235806!3d-8.567737766751824!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23bfc95daac81%3A0x2945996c398ae1b7!2sPraktek%20Dokter%20Gigi%20Ni%20Made%20Marhaeni!5e0!3m2!1sid!2sid!4v1669950849385!5m2!1sid!2sid', NULL, '2022-11-06 19:26:16', '2022-12-01 19:14:24'),
(102, '0227G011', 'drg. I Made Gede Adhy Gelgel Santosa', 'drg-i-made-gede-adhy-gelgel-santosa', '16.00-22.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Abiansemal', 'Desa Darmasaba', 'Kabupaten Badung', '08123954726', 'Jl. Ngr Rai No.41 Mengwi', 'No Data', 'No Data', '1', '80.800', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.7259383874853!2d115.16948609025978!3d-8.545138599341282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23b23004bac07%3A0xcafd486e610519f1!2sPraktek%20Dokter%20Gigi%20Drg.%20Made%20Gede%20Adhy%20Gelgel%20Santosa!5e0!3m2!1sid!2sid!4v1669958844476!5m2!1sid!2sid', NULL, '2022-11-06 19:27:00', '2022-12-01 21:27:49'),
(103, '0227G013', 'drg. Ni Md Rai Purnawati', 'drg-ni-md-rai-purnawati', '09.00 - 15.00 & 18.00 - 21.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '0361730083', 'Petitenget No.2', 'No Data', 'No Data', '1', '90.688', 'Dokter Gigi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.675206409119!2d115.16392836190751!3d-8.671984860500025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdb84fa80a9e811d2!2zOMKwNDAnMTkuMSJTIDExNcKwMDknNTAuNCJF!5e0!3m2!1sid!2sid!4v1669959427503!5m2!1sid!2sid', NULL, '2022-11-06 19:27:50', '2022-12-01 21:37:39'),
(104, '0227G014', 'drg. Ni Nyoman Rai Sukadani, MM', 'drg-ni-nyoman-rai-sukadani-mm', '\" 09.00-21.00  (KECUALI HARI LIBUR)\"', 'No Data', 'Mengwi', 'Desa Gulingan', 'Kabupaten Badung', '0811393376', 'Br Babakan Kangin , Desa Gulin', '0', '0', '2', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:28:42', '2022-11-06 19:28:42'),
(105, '0227G016', 'drg. Ni Nyoman Sriwati', 'drg-ni-nyoman-sriwati', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta', 'Desa Kuta', 'Kabupaten Badung', '081916198670', 'Jl. Blambangan No. 27f (Depan', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:30:11', '2022-11-06 19:30:11'),
(106, '0227G017', 'drg. I Gusti Agung Ayu Hartini,M.Biomed', 'drg-i-gusti-agung-ayu-hartinimbiomed', '15.00-21.000 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '081338400428', 'Jl. Kuru Setra No. 1a Nusa Dua', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:30:52', '2022-11-06 19:30:52'),
(107, '0227G019', 'drg. Anak Agung putu Yosi Martrisna', 'drg-anak-agung-putu-yosi-martrisna', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '081999473638', 'Jl. Tanah Sampi 78 Br.Beluran', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:31:29', '2022-11-06 19:31:29'),
(108, '0227G020', 'drg. Ni Gusti Putu Astini', 'drg-ni-gusti-putu-astini', '08.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '081339488033', 'Jl. Uluwatu I No. 117 Jimbaran', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:32:15', '2022-11-06 19:32:15'),
(109, '0227G021', 'drg. Theresia Daniel', 'drg-theresia-daniel', '\" 10.00-13.00&18.00-21.00   (KECUALI HARI LIBUR)\"', 'No Data', 'Mengwi', 'Desa Buduk', 'Kabupaten Badung', '081805646469', 'Perum Bernasi Permai', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:32:56', '2022-11-06 19:32:56'),
(110, '0227G022', 'drg. Ni Nyoman Rasmi Adnyani', 'drg-ni-nyoman-rasmi-adnyani', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '08123991103', 'Jl.Kurusetra Pujamandala Nusa', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:33:48', '2022-11-06 19:33:48'),
(111, '0227G023', 'drg. Ni Made Alit Mulyani', 'drg-ni-made-alit-mulyani', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Mengwi', 'Desa Sempidi', 'Kabupaten Badung', '0361-422464 / 081338018216', 'Jl. Raya Sempidi No 29', '0', '0', '2', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:34:30', '2022-11-06 19:34:30'),
(112, '0227G024', 'drg. Anak Agung Made Agung Negara', 'drg-anak-agung-made-agung-negara', 'SENIN - SABTU 15.00 - 22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '0361-732471 / 085239184716', 'Jl Gunung Tangkuban Perahu', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:35:10', '2022-11-06 19:35:10'),
(113, '0227G025', 'drg. Anak Agung Gede Putra Mahendra', 'drg-anak-agung-gede-putra-mahendra', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta', 'Desa Kuta', 'Kabupaten Badung', '081237898400', 'Jl Mataram No 46 Kuta', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:36:46', '2022-11-06 19:36:46'),
(114, '0227G026', 'Drg. luh eka budiayu komalasari, skg', 'drg-luh-eka-budiayu-komalasari-skg', 'SENIN - JUMAT 16.00 - 22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Selatan', 'Desa Ungasan', 'Kabupaten Badung', '087861330145 / 082144896529', 'Jl Pura Batu Pageh', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:37:38', '2022-11-06 19:37:38'),
(115, '0227G028', 'drg. Agung Setiabudi', 'drg-agung-setiabudi', 'HARI KERJA (16.00 - 22.00)', 'No Data', 'Kuta Selatan', 'Desa Ungasan', 'Kabupaten Badung', '087861247333', 'Jl. Pura Masuka', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:38:13', '2022-11-06 19:38:13'),
(116, '0227G029', 'drg. Oktavianus Sea', 'drg-oktavianus-sea', 'SENIN - SABTU 08.00 - 14.00', 'No Data', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '0361-437052', 'Jalan Raya Tuka No 24', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:38:53', '2022-11-06 19:38:53'),
(117, '0227G030', 'drg. I Made Kamajaya', 'drg-i-made-kamajaya', 'SENIN- MINGGU (09.13 -18.20)', 'No Data', 'Kuta', 'Desa Kedonganan', 'Kabupaten Badung', '08123927123 / 081239952344', 'Jl. Toyaning No. 90 X Kedonganan, Kuta, Badung', '0', '0', '2', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:39:31', '2022-11-06 19:39:31'),
(118, '0227G031', 'drg. Wayan Wahyuni', 'drg-wayan-wahyuni', 'SETIAP HARI PUKUL 09.00 - 15.00 WITA', 'No Data', 'Mengwi', 'Desa Buduk', 'Kabupaten Badung', '081246895879', 'Jl. Veteran Banjar Umacandi, Desa Buduk, Kecamatan Mengwi, Kab. Badung', '0', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-06 19:40:13', '2022-11-06 19:40:13'),
(119, '0227U001', 'Klinik Bhaksena Tragia', 'klinik-bhaksena-tragia', '24 Jam', 'No Data', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361776821/(0361)8705631', 'Jl.By Pass Nusa Dua, Komp. Per', 'No Data', '3', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-06 19:41:08', '2022-11-06 19:41:08'),
(120, '0227U004', 'dr. I Gusti Putu Adi', 'dr-i-gusti-putu-adi', '08.00-12.00 & 18.00-21.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta Utara', 'Desa Kerobokan', 'Kabupaten Badung', '0361423959 / 087861007030', 'Jl. Raya Kerobokan, Br. Gede', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:41:53', '2022-11-06 19:41:53'),
(121, '0227U005', 'dr. Ni Putu Purlimaningsih', 'dr-ni-putu-purlimaningsih', 'SETIAP HARI 09.00-21.00   (KECUALI HARI MINGGU)', 'No Data', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '03617853195', 'Jl. Cempaka No.5 Br Uma', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:42:36', '2022-11-06 19:42:36'),
(122, '0227U006', 'dr. I Gde Sosiawan', 'dr-i-gde-sosiawan', 'SENIN -SABTU 17.00-23.00 & HARI MINGGU /LIBUR 19.00-21.00', 'No Data', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '0361420153', 'Jl.I Gusti Ketut Jelantik No.4', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:43:14', '2022-11-06 19:43:14'),
(123, '0227U017', 'dr. Putu Sunadiyati. M, Kes', 'dr-putu-sunadiyati-m-kes', '16.00-22.00  (KECUALI HARI LIBUR)', 'No Data', 'Kuta', 'Desa Legian', 'Kabupaten Badung', '0361761127', 'Jl. Pantai Kuta, Gg Kahyangan', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:43:56', '2022-11-06 19:43:56'),
(124, '0227U018', 'dr. Ni Nyoman Puri', 'dr-ni-nyoman-puri', '24 Jam', 'No Data', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361770169 / 08174750588', 'Jl. Pratama 170 Tanjung Benoa', '0', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:44:34', '2022-11-06 19:44:34'),
(125, '0227U021', 'dr. Ni Luh Putu Listya Ryana Sari', 'dr-ni-luh-putu-listya-ryana-sari', '16.00-23.00  (KECUALI HARI LIBUR)', 'No Data', 'Abiansemal', 'Desa Mekar Bhuana', 'Kabupaten Badung', '03618988458', 'Br.Sigaran , Mekar Buana, Abia', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:45:31', '2022-11-06 19:45:31'),
(126, '0227U024', 'dr. Ni Made Tariani, M.Kes', 'dr-ni-made-tariani-mkes', '16.00-22.00  (KECUALI HARI LIBUR)', 'No Data', 'Mengwi', 'Desa Buduk', 'Kabupaten Badung', '08123829416', 'Perum Priskila Tmn Mulia D 9', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:46:08', '2022-11-06 19:46:08'),
(127, '0227U026', 'dr. I Made Sukadaana, M.Kes', 'dr-i-made-sukadaana-mkes', '18.00-21.00  (KECUALI HARI LIBUR)', 'No Data', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '03618750906', 'Jl. Sunset Road Gg.Meduri 5', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:46:53', '2022-11-06 19:46:53'),
(128, '0227U029', 'dr. I Nyoman Gunarta,M.P.H', 'dr-i-nyoman-gunartamph', '16.00-22.00', 'No Data', 'Mengwi', 'Desa Baha', 'Kabupaten Badung', '08155759555', 'Jl. Raya Sibanggede No.25', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:47:38', '2022-11-06 19:47:38'),
(129, '0227U031', 'dr. I Wayan Budiarta', 'dr-i-wayan-budiarta', '07.00-21.00  (KECUALI HARI LIBUR)', 'No Data', 'Abiansemal', 'Desa Dauh Ye Cani', 'Kabupaten Badung', '03618515978', 'Br Kedampal Dauh Yeh Cani', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:48:17', '2022-11-06 19:48:17'),
(130, '0227U032', 'Klinik Tiara Husada', 'klinik-tiara-husada', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta', 'Desa Tuban', 'Kabupaten Badung', '0361752551 / (0361) 756814', 'Jl Raya Tuban No 100x', 'No Data', '11', '2', '89.683', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d452.0231517349259!2d115.17845067542224!3d-8.741050928450075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd244051867ad4f%3A0x668d5e1816d99ec5!2sKlinik%20Tiara%20Husada!5e0!3m2!1sid!2sid!4v1669959948990!5m2!1sid!2sid', NULL, '2022-11-06 19:49:01', '2022-12-01 21:52:43'),
(131, '0227U033', 'BP. Raya Kuta', 'bp-raya-kuta', '08.00-21.30 (KECUALI HARI LIBUR)', 'No Data', 'Kuta', 'Desa Tuban', 'Kabupaten Badung', '0361758033 / 081340288028', 'Jl. Raya Tuban No 62', '0', '3', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-06 19:49:47', '2022-11-06 19:49:47'),
(132, '0227U034', 'Klinik Nurjaya', 'klinik-nurjaya', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Mengwi', 'Desa Lukluk', 'Kabupaten Badung', '0361427254 / fax. 0361422627', 'Raya Sempidi No 45', 'No Data', '8', '1', '82.673', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1599.847057987137!2d115.18598349559991!3d-8.598104398713339!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2394a898c7381%3A0x7c0f2553e407389b!2sNurjaya%20Usadha!5e0!3m2!1sid!2sid!4v1669964327653!5m2!1sid!2sid', NULL, '2022-11-06 19:50:48', '2022-12-01 22:59:09'),
(133, '0227U037', 'dr. I Wayan Subagia', 'dr-i-wayan-subagia', 'SENIN - MINGGU 08.00-13.00  dan 17.00-22.00', 'No Data', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '087860147400', 'Petasikan Ii No.1 Jimbaran', '0', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:51:38', '2022-11-06 19:51:38'),
(134, '0227U038', 'dr. I Ketut Ardika, M.Kes', 'dr-i-ketut-ardika-mkes', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '085237555305', 'Sandat, Br. Uma', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:52:13', '2022-11-06 19:52:13'),
(135, '0227U040', 'dr. Made Ayu Witriasih, M.Kes.', 'dr-made-ayu-witriasih-mkes', '16.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Kuta', 'Desa Kuta', 'Kabupaten Badung', '0361755622', 'Raya Kuta No 138', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:52:52', '2022-11-06 19:52:52'),
(136, '0227U041', 'dr. I Komang Gede Rai Mulyawan, M.Kes.', 'dr-i-komang-gede-rai-mulyawan-mkes', '17.00-22.00 (KECUALI HARI LIBUR)', 'No Data', 'Mengwi', 'Desa Abian base', 'Kabupaten Badung', '03618899000 / 081236390000', 'Raya Abianbase No.91', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-06 19:54:08', '2022-11-06 19:54:08'),
(137, '0227U043', 'Klinik Prasada', 'klinik-prasada', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '03613191080', 'Jl. Gunung Sanghyang 17b Petin', 'No Data', '4', 'No Data', '81.674', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d930.7715496523944!2d115.17362657848595!3d-8.64655867533738!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238a435b38ca7%3A0xfa2898ebb14b7cc6!2sKlinik%20Prasada!5e0!3m2!1sid!2sid!4v1669964629178!5m2!1sid!2sid', NULL, '2022-11-07 16:29:54', '2022-12-01 23:04:06'),
(138, '02330004', '1', '1', '16.00-22.00 SETIAP HARI', '1', '1', '1', 'Kota Denpasar', '000000000817725120', '1', '1', '1', '1', '1', 'Kota Denpasar', '', '2022-11-07 16:57:05', '2022-11-07 16:56:52', '2022-11-07 16:57:05'),
(139, '0227U047', 'dr. Ni Luh Ketut Ayu Ratnawati, M.Kes', 'dr-ni-luh-ketut-ayu-ratnawati-mkes', '16.00 - 22.00(KECUALI HARI LIBUR)', 'No Data', 'Petang', 'Desa Carangsari', 'Kabupaten Badung', '081337209161', 'Br. Samuan Kawan', '0', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 17:08:24', '2022-11-07 17:08:24'),
(140, '0227U048', 'dr. Ni Nyoman Lilik Ardani', 'dr-ni-nyoman-lilik-ardani', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Pererenan', 'Kabupaten Badung', '0818355696', 'Jl. Raya Pererenan Tanah Lot', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:46:18', '2022-11-07 18:46:18'),
(141, '0227U049', 'dr.Anak Agung Istri Sonya Warih Astuti', 'dranak-agung-istri-sonya-warih-astuti', 'SENIN - JUMAT 08.00 - 20.00 & SABTU 08.00 - 12.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '08123885872', 'Jl.Raya Padang Luwih No 5', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:47:30', '2022-11-07 18:47:30'),
(142, '0227U050', 'dr. I Ketut Dwipayana', 'dr-i-ketut-dwipayana', 'SENIN-MINGGU 16.00 - 22.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Bongkasa', 'Kabupaten Badung', '08123610832', 'Br. Pengembungan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:48:05', '2022-11-07 18:48:05'),
(143, '0227U051', 'dr. Alit Sukrisna Natha', 'dr-alit-sukrisna-natha', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '081916181256 / 081999676444', 'Jl. Kurusetra No. 820, Benoa, Kuta Selatan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:48:51', '2022-11-07 18:48:51'),
(144, '0227U052', 'dr. I Kadek Nariyantha', 'dr-i-kadek-nariyantha', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Kekeran', 'Kabupaten Badung', '081353141919', 'Br. Delod Sema', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:49:27', '2022-11-07 18:49:27'),
(145, '0227U053', 'dr. I Gede Wahyu Putra Wicaksana', 'dr-i-gede-wahyu-putra-wicaksana', 'SETIAP HARI 08.00-22.00', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '08563929536', 'Jl. Raya Canggu No. 666', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:50:02', '2022-11-07 18:50:02'),
(146, '0227U055', 'dr. Indira Pudi Asri', 'dr-indira-pudi-asri', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '08123902220', 'Puri Canggu I/1/Canggu Permai', 'No  Data', '0', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:50:42', '2022-11-07 18:50:42'),
(147, '0227U056', 'dr. Ida Bagus Putu Sujana', 'dr-ida-bagus-putu-sujana', '08.00-12.00&14.00-22.00(KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Tibubeneng', 'Kabupaten Badung', '085737395009', 'Canggu Permai B5 Kuta Utara', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:51:18', '2022-11-07 18:51:18'),
(148, '0227U058', 'dr. I Made Adi Dwiguna', 'dr-i-made-adi-dwiguna', '10.00 - 11.00 & 17.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Buduk', 'Kabupaten Badung', '08123964206', 'Jl. Rahayu Asri 8 A Buduk', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:51:57', '2022-11-07 18:51:57'),
(149, '0227U060', 'dr. A.A.I.Marsovia Rojani', 'dr-aaimarsovia-rojani', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '081338652003', 'Jl. Tegal Permai P3/58', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:52:30', '2022-11-07 18:52:30'),
(150, '0227U061', 'dr. I Gusti Ayu Puriayuni', 'dr-i-gusti-ayu-puriayuni', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '081805384432', 'Jl. Muding Indah No.1x', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:53:25', '2022-11-07 18:53:25'),
(151, '0227U063', 'dr. Ketut Nanik Kurniasih', 'dr-ketut-nanik-kurniasih', '09.00 - 21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '081330634565', 'Perum Dalung Permai Blok P3 No', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:54:09', '2022-11-07 18:54:09'),
(152, '0227U064', 'dr. Ka Kristiana Dewi Komalasari', 'dr-ka-kristiana-dewi-komalasari', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Munggu', 'Kabupaten Badung', '08981388696', 'Jl. Raya Munggu - Tanah Lot', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:54:45', '2022-11-07 18:54:45'),
(153, '0227U065', 'dr. Ni Kadek Martini', 'dr-ni-kadek-martini', 'SETIAP HARI 07.00-22.00', 'Data Tidak Tersedia', 'Kuta', 'Desa Kedonganan', 'Kabupaten Badung', '08123806318', 'Jl. Toya Ning No.999', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:55:28', '2022-11-07 18:55:28'),
(154, '0227U067', 'dr. Ni putu Dian Sulistyawati,MM', 'dr-ni-putu-dian-sulistyawatimm', 'SETIAP HARI  08.00-22.00', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '08123647340', 'Jl. Raya Padang Luwih Dalung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:56:06', '2022-11-07 18:56:06'),
(155, '0227U068', 'dr. I Wayan Edi Wirawan', 'dr-i-wayan-edi-wirawan', 'SETIAP HARI 09.00-21.00', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '08164701459', 'Jl. Uluwatu No. 7 Br.Ubung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:56:42', '2022-11-07 18:56:42'),
(156, '0227U070', 'dr. Ida Ayu Idewati, M.Kes', 'dr-ida-ayu-idewati-mkes', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '081999456404/0361732012', 'Jl. Merta Agung No 15, Peguben', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:57:19', '2022-11-07 18:57:19'),
(157, '0227U074', 'dr. Ni Wayan Okayeni', 'dr-ni-wayan-okayeni', 'SETIAP HARI 08.00-20.00', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kelod', 'Kabupaten Badung', '08123921813/085101467990', 'Jln. Tunjung I no 9,Br Pengubengan Kangin, Desa Kerobokan Kelod, Kec. Kuta Utara-Badung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:57:55', '2022-11-07 18:57:55'),
(158, '0227U075', 'dr. Ni Made Dwi Yunita Sari', 'dr-ni-made-dwi-yunita-sari', 'SENIN-SABTU  08.00-21.00 MINGGU /HARI LIBUR 14.00-20.00', 'Data Tidak Tersedia', 'Kuta', 'Desa Legian', 'Kabupaten Badung', '081238202624 / 082146567733', 'Jl. Pantai Kuta Gg. Popies I', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:58:31', '2022-11-07 18:58:31'),
(159, '0227U076', 'dr. I Nyoman Kurniawan', 'dr-i-nyoman-kurniawan', '\"SENIN -SABTU 08.00-21.00 MINGGU /HARI LIBUR 14.00-20.00\"', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Ungasan', 'Kabupaten Badung', '08174778522', 'Jl. Bali Cliff No.88g Ungasan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:59:09', '2022-11-07 18:59:09'),
(160, '0227U080', 'dr. I B Putu Andi Sucirta', 'dr-i-b-putu-andi-sucirta', 'SENIN -SABTU 15.00 - 21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '081338307567', 'Jl Muding Batu Sangian Xi No 9', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 18:59:49', '2022-11-07 18:59:49'),
(161, '0227U081', 'dr. Anik Rosida', 'dr-anik-rosida', 'SENIN - SABTU 16.00 - 22.00 &TANGGAL MERAH 19.00-21.00 &MINGGU LIBUR', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '081239664443', 'Apotek Ari Putra Farma, Depan Pasar Pengosari Kerobokan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:00:28', '2022-11-07 19:00:28'),
(162, '0227U083', 'dr. Ni Kadek Eka Rusmayanti', 'dr-ni-kadek-eka-rusmayanti', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Penarungan', 'Kabupaten Badung', '081236760078 / 08179722084', 'Jl Raya Penarungan B.Blungbang', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:00:59', '2022-11-07 19:00:59'),
(163, '0227U084', 'dr. Nyoman Nulendri, M.Kes', 'dr-nyoman-nulendri-mkes', 'SENIN - SABTU  16.00 - 22.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Gulingan', 'Kabupaten Badung', '08123952192', 'Jl Raya Gulingan Br Tengah Kld', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:01:34', '2022-11-07 19:01:34'),
(164, '0227U085', 'dr. I Gusti Ngurah Bagus Sastrawan Djaya, M.Kes.', 'dr-i-gusti-ngurah-bagus-sastrawan-djaya-mkes', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '08155768915', 'Perum. Muding Bougenville No.2', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:02:11', '2022-11-07 19:02:11'),
(165, '0227U087', 'dr. I Nyoman Trisna Putra', 'dr-i-nyoman-trisna-putra', 'SENIN - SABTU 15.00 - 21.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Penarungan', 'Kabupaten Badung', '0361-9007191 / 087854634848', 'Jl Raya Anggungan Uma Anyar', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:02:44', '2022-11-07 19:02:44'),
(166, '0227U088', 'dr. Ni Luh Putu Nurhaeni', 'dr-ni-luh-putu-nurhaeni', '\"SENIN -SABTU 08.00-21.00 \"', 'Data Tidak Tersedia', 'Mengwi', 'Desa Buduk', 'Kabupaten Badung', '08123600642', 'Jl. Raya Buduk Perum Priskila', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:03:48', '2022-11-07 19:03:48'),
(167, '0227U089', 'dr. Elly Swandewi Murti', 'dr-elly-swandewi-murti', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Deas Sading', 'Kabupaten Badung', '08123905839', 'Jl Raya Sading No 134', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:12:50', '2022-11-07 19:12:50'),
(168, '0227U090', 'dr. Ni Made Ayu Darmayanti', 'dr-ni-made-ayu-darmayanti', 'SENIN - SABTU 08.00-14.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Kutuh', 'Kabupaten Badung', '085104376125 / 083119800080', 'Jl Darmawangsa No 19', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:13:25', '2022-11-07 19:13:25'),
(169, '0227U092', 'dr. Ni Made Widiari', 'dr-ni-made-widiari', '24 Jam', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Canggu', 'Kabupaten Badung', '0361-9077364/085212470604', 'Jl. Raya Canggu, Br. Kayu Tula', 'No  Data', '4', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:13:58', '2022-11-07 19:13:58'),
(170, '0227U093', 'dr. Andrea Wijaya', 'dr-andrea-wijaya', 'SENIN - MINGGU 08.00 - 20.00', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Pecatu', 'Kabupaten Badung', '08179707778', 'Jl Raya Uluwatu Pecatu No.100', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:14:33', '2022-11-07 19:14:33'),
(171, '0227U097', 'dr. I Putu Trisnawan', 'dr-i-putu-trisnawan', 'SENIN-SABTU (15.00 - 21.00)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '081337224273 / 082236700827', 'Jl. Menuh II No 8, Br. Tambak Sari, Kapal, Badung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:15:16', '2022-11-07 19:15:16'),
(172, '0227U098', 'dr. I Made Santika', 'dr-i-made-santika', 'SETIAP HARI (08.00 - 21.00)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '08113850162', 'Jl.Siligita No 14 Nusa Dua', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:15:45', '2022-11-07 19:15:45'),
(173, '0227U105', 'dr. I Nyoman Gde Danu Kumara', 'dr-i-nyoman-gde-danu-kumara', 'SETIAP HARI (09.00 - 22.00)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '03618479785', 'Jalan Danau Batur Raya No 1c T', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:16:19', '2022-11-07 19:16:19'),
(174, '0227U106', 'dr. I Putu Sabda Edy Antara', 'dr-i-putu-sabda-edy-antara', 'SENIN-MINGGU 14.00-20.00', 'Data Tidak Tersedia', 'Petang', 'Desa Petang', 'Kabupaten Badung', '081999555732', 'Jalan Raya Petang', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:16:57', '2022-11-07 19:16:57'),
(175, '0227U107', 'dr. Ni Ketut Indriani, S.Ked', 'dr-ni-ketut-indriani-sked', '24 JAM', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '0361437052', 'Jalan Raya Tuka No 24, Tuka, D', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:17:30', '2022-11-07 19:17:30'),
(176, '0227U110', 'dr. Ayu Gede Ratih Astarida', 'dr-ayu-gede-ratih-astarida', '24 JAM', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Canggu', 'Kabupaten Badung', '081916486485', 'Jl.Pantai Batu Bolong No.51', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:18:06', '2022-11-07 19:18:06'),
(177, '0227U111', 'dr. Putu Gede Putra Darmadi', 'dr-putu-gede-putra-darmadi', 'SENIN -SABTU   08.00-22.00&MINGGU /HARI LIBUR : 17.00-22.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Sibangkaja', 'Kabupaten Badung', '081916223901', 'Jl Raya Sibang Kaja No 69', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:18:47', '2022-11-07 19:18:47'),
(178, '0227U114', 'dr. I. B. Mas Cahyana Surya', 'dr-i-b-mas-cahyana-surya', 'SENIN -SABTU 14.00-20.00 MINGGU DAN HARI LIBUR 08.00-14.00', 'Data Tidak Tersedia', 'Petang', 'Desa Belok Sidan', 'Kabupaten Badung', '08123121152', 'Jl. Raya Petang Belok -Kintama', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:19:22', '2022-11-07 19:19:22'),
(179, '0227U115', 'dr. Gipsy Ayu Baby Larasati, S.Ked', 'dr-gipsy-ayu-baby-larasati-sked', '24 JAM', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Mekar Bhuana', 'Kabupaten Badung', '081338813760/ 087862010762', 'Jalan Raya Mambal', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:20:07', '2022-11-07 19:20:07'),
(180, '0227U116', 'dr. I Md Ditha Asmara Sutra P U', 'dr-i-md-ditha-asmara-sutra-p-u', 'SENIN-SABTU 08.00-21.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Kapal', 'Kabupaten Badung', '03614425360', 'Jl. Ratna No 9, Br Muncan', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:20:54', '2022-11-07 19:20:54'),
(181, '0227U118', 'dr. Putu Eka Kristi Permatasari', 'dr-putu-eka-kristi-permatasari', 'SENIN-SABTU 15.00 - 21.00', 'Data Tidak Tersedia', 'Mengwi', 'Deas Sading', 'Kabupaten Badung', '081246121422', 'Jl. Raya Sading No 64', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:21:27', '2022-11-07 19:21:27'),
(182, '0227U119', 'dr. Gede Sukma Okta Perdana, S.Ked', 'dr-gede-sukma-okta-perdana-sked', '24 JAM', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '0361 8975042 / 082145432807', 'Jl.Raya Muding No 2 C, Banjar Muding Kaja, Desa Kerobokan Kaja, Kuta Utara', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:22:00', '2022-11-07 19:22:00'),
(183, '0227U122', 'dr. Ariska Wirayanti', 'dr-ariska-wirayanti', 'SENIN - SABTU  09.00 - 21.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Darmasaba', 'Kabupaten Badung', '087865893335', 'Jalan Raya Darmasaba No.8', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:22:36', '2022-11-07 19:22:36'),
(184, '0227U123', 'dr. Luh Putu Ratih Andari', 'dr-luh-putu-ratih-andari', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Sobangan', 'Kabupaten Badung', '081217439235', 'Jl. Denpasar- Singaraja No. 25, Kuwum', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:23:20', '2022-11-07 19:23:20'),
(185, '0227U124', 'dr. Putu Aryana', 'dr-putu-aryana', 'SENIN-MINGGU 08.00-22.00', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '081337181966', 'Jl Raya Uluwatu 1 No 111, Kelurahan Jimbaran Kuta Selatan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:23:54', '2022-11-07 19:23:54'),
(186, '0227U125', 'dr. Ni Putu Santiasih', 'dr-ni-putu-santiasih', 'SENIN -SABTU  15.00-21.00 WIB', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Mambal', 'Kabupaten Badung', '081237048292', 'Br. Umahanyar Desa Mambal, Kec. Abiansemal', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:24:33', '2022-11-07 19:24:33'),
(187, '0227U126', 'dr. Ida Ayu Ratih Savitri', 'dr-ida-ayu-ratih-savitri', 'SENIN-JUMAT 16.00 - 22.00 dan SABTU- MINGGU 09.00-15.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Punggul', 'Kabupaten Badung', '081239959183 / 08180501199', 'Jl. Kapten I Gst Nym Kajeng No. 58 Br Padang Punggul Abiansemal Badung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:25:04', '2022-11-07 19:25:04'),
(188, '0227U128', 'dr. Ni Luh Zallila Gustina', 'dr-ni-luh-zallila-gustina', 'Senin s.d Minggu (16.00 -22.00)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan Kaja', 'Kabupaten Badung', '087862966353', 'Perum. Dalung Permai Blok H3/5 Lingk. Surya Buwana, Kerobokan Kaja, Kuta Utara, Badung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:25:36', '2022-11-07 19:25:36'),
(189, '0227U129', 'dr. I Putu Dhidhi Pradnya Suryadiarsa, S. Ked', 'dr-i-putu-dhidhi-pradnya-suryadiarsa-s-ked', 'Senin s.d Minggu (15.00 -21.00)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Lukluk', 'Kabupaten Badung', '087862380952', 'Lingkungan Delod Pempatan, Kelurahan Lukluk, Kecamatan Mengwi, Kabupaten Badung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:26:11', '2022-11-07 19:26:11'),
(190, '0227U130', 'dr. I Putu Bagus Mulyana Yoga', 'dr-i-putu-bagus-mulyana-yoga', 'Senin s.d Sabtu (16.00 -22.00)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Munggu', 'Kabupaten Badung', '081331530547', 'Jl. Raya Munggu, Banjar Badung, Desa Munggu Kecamatan Mengwi, Kabupaten Badung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:26:49', '2022-11-07 19:26:49'),
(191, '0227U131', 'dr. I Gusti Ayu Mas Anandita Paramastuti', 'dr-i-gusti-ayu-mas-anandita-paramastuti', 'Setiap Hari (09.00-22.00)', 'Data Tidak Tersedia', 'Kuta', 'Desa Tuban', 'Kabupaten Badung', '081238900366', 'Apotek Kimia Farma, Jl Dewi Sartika No. 67 Kuta', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:27:24', '2022-11-07 19:27:24'),
(192, '0227U132', 'dr. Luh Putu Liana Indayana Dewi', 'dr-luh-putu-liana-indayana-dewi', 'Senin s.d Sabtu (08.00-14.00)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Canggu', 'Kabupaten Badung', '081280229945', 'Jalan Raya Canggu No.17R, Br. Kayu Tulang, Ds Canggu', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:28:01', '2022-11-07 19:28:01'),
(193, '0227U133', 'dr. Aviriga Septa Karkata Loka', 'dr-aviriga-septa-karkata-loka', 'Setiap hari pukul 09.00 s.d 21.00 WITA', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '081288905123', 'Jl. Nuansa Utama Selatan Nomor 05, Kelurahan Jimbaran, Kecamatan Kuta Selatan, Kab. Badung', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:28:59', '2022-11-07 19:28:59'),
(194, '0227U134', 'dr. I Ketut Sudi Arditha', 'dr-i-ketut-sudi-arditha', 'Setiap Hari (15.00-22.00)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Jimbaran', 'Kabupaten Badung', '081238438440', 'Jalan Uluwatu I Nomor 91, Kelurahan Jimbaran, Kecamatan Kuta Selatan, Kabupaten Badung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:29:41', '2022-11-07 19:29:41'),
(195, '0227U135', 'dr. I Gede Raditya Narayana', 'dr-i-gede-raditya-narayana', 'Setiap Hari (08.00-20.00)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Canggu', 'Kabupaten Badung', '082211511911/081299885911', 'The Medical Bali Jl. Pantai Batu Bolong Nomor 13 A, Desa Canggu, Kcematan Kuta Utara Kab. Badung', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:30:19', '2022-11-07 19:30:19'),
(196, '0227U136', 'dr. I Made Bagus Ambara Putra', 'dr-i-made-bagus-ambara-putra', 'Senin s.d Sabtu (15.00 s.d 21.00)', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Punggul', 'Kabupaten Badung', '0819-3608-9039', 'Jalan Belangsinga, Desa Punggul, Kecamatan Abiansemal,', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:31:00', '2022-11-07 19:31:00'),
(197, '0227U137', 'dr. Ida Bagus Tibu Bening, MM', 'dr-ida-bagus-tibu-bening-mm', 'SETIAP HARI PUKUL 09.00 - 21.00 WITA', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan', 'Kabupaten Badung', '082321911911', 'Pertokoan Anyar Kencana No 5 Lingk Br. Silayukti, Kerobokan Kuta Utara', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:31:47', '2022-11-07 19:31:47'),
(198, '0227U138', 'dr. I Nyoman Suastika', 'dr-i-nyoman-suastika', 'SENIN - SABTU 17.00 - 22.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Abian base', 'Kabupaten Badung', '087861186015', 'Jl. Raya Abianbase Dalung Nomor 136, Kelurahan Abianbase, Kec Mengwi', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:32:34', '2022-11-07 19:32:34'),
(199, '0227U139', 'dr. Ni Luh Krisna Agustini', 'dr-ni-luh-krisna-agustini', 'SETIAP HARI PUKUL 08.00 s.d 20.00 WITA', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Ungasan', 'Kabupaten Badung', '03614465827', 'Jl. Pura Masuka, Ungasan, Kuta Selatan', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:33:24', '2022-11-07 19:33:24'),
(200, '0227U140', 'dr. Ida Ayu Cili Swesis, S. Ked.', 'dr-ida-ayu-cili-swesis-s-ked', 'SETIAP HARI PUKUL 10.00 s.d 20.00 WITA', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Abiansemal', 'Kabupaten Badung', '081228723942', 'Jl. Tandur No. 1 Banjar Keraman, Desa Abiansemal, Kec. Abiansemal, Kab. Badung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:34:05', '2022-11-07 19:34:05'),
(201, '0227U141', 'dr. Kadek Edy Januar Sanjaya, S.Ked.', 'dr-kadek-edy-januar-sanjaya-sked', 'SENIN - SABTU 07.00 - 18.00 WITA', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '081228951906', 'Jl. Raya Dalung Permai Blok W W, Desa Dalung, Kecamatan Kuta Utara, Kabupaten Badung', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-07 19:34:47', '2022-11-07 19:34:47'),
(202, '02330001', 'Puskesmas IV Denpasar Selatan', 'puskesmas-iv-denpasar-selatan', 'UGD & PERSALINAN 24 Jam SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30;   SABTU 08.00 - 11.30', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Kel. Pedungan', 'Kota Denpasar', '0361722475', 'Jl. Raya Pulau Moyo No: 63a', 'No  Data', '7', '3', '91.341', 'Puskesmas', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.6348631022744!2d115.20978882524726!3d-8.695317153608972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd2412184d5f6e5%3A0x3aed23753eb4ca47!2sPuskesmas%20IV%20Denpasar%20Selatan!5e0!3m2!1sid!2sid!4v1669965309836!5m2!1sid!2sid', NULL, '2022-11-07 19:35:46', '2022-12-01 23:15:26'),
(203, '02330003', 'Sikes Lanud I Gusti Ngurah Rai', 'sikes-lanud-i-gusti-ngurah-rai', '08.00-15.00 SENIN-JUMAT', 'FKTP BPJS Kesehatan Wilayah Badung', 'Kuta', 'Desa Tuban', 'Kabupaten Badung', '03619351116 ex. 128', 'Jl. I Gusti Gede Suwandi No.51', 'No  Data', '1', '1', '73.499', 'Klinik TNI', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d246.46664017556196!2d115.16995029733545!3d-8.742125268834766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xeb01209803d94305!2zOMKwNDQnMzEuOCJTIDExNcKwMTAnMTIuMCJF!5e0!3m2!1sid!2sid!4v1669966127182!5m2!1sid!2sid', NULL, '2022-11-07 19:36:27', '2022-12-01 23:29:12'),
(204, '02330006', 'Klinik Polresta Denpasar (POL)', 'klinik-polresta-denpasar-pol', '08.00-15.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Barat', 'Kel. Padang Sambian', 'Kota Denpasar', '03619067944', 'Jl. Gunung Sanghyang No. 110', 'No  Data', '2', '1', '78.570', 'Klinik Polri', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1114.8956205685026!2d115.18298367040502!3d-8.64839384480404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238a5e2861e9d%3A0x86383fe797cfbace!2sPolresta%20Denpasar!5e0!3m2!1sid!2sid!4v1669966572169!5m2!1sid!2sid', NULL, '2022-11-07 19:39:27', '2022-12-01 23:36:32'),
(205, '02330007', 'Klinik Polda Bali', 'klinik-polda-bali', '07.30-15.00 (KECUALI HARI LIBUR)', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Utara', 'Ds. Dangin Puri Kangin', 'Kota Denpasar', '0361265665', 'Jl. Kamboja No.22', 'No  Data', '3', '1', '81.821', 'Klinik Polri', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2594.844823518567!2d115.22081176035648!3d-8.65111207558553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd24082b3143dcd%3A0xe75a76c49860bf0!2sPoliklinik%20Polda%20Bali!5e0!3m2!1sid!2sid!4v1669966836217!5m2!1sid!2sid', NULL, '2022-11-07 19:40:19', '2022-12-01 23:48:33'),
(206, '02330103', 'Puskesmas III Denpasar Selatan', 'puskesmas-iii-denpasar-selatan', 'SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Ds. Pemogan', 'Kota Denpasar', '03617446324 / 03619002877', 'Jl. Gelogor Carik Pemogan', 'No  Data', '3', '2', '78.881', 'Puskesmas', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d749.3991648928329!2d115.19177116728314!3d-8.696748360783495!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd241334fd11e59%3A0xaea0e70850863ce6!2sPuskesmas%20III%20Denpasar%20Selatan!5e0!3m2!1sid!2sid!4v1669968517480!5m2!1sid!2sid', NULL, '2022-11-07 19:40:56', '2022-12-02 00:14:39'),
(207, '0233B003', 'Klinik Asih Usadha', 'klinik-asih-usadha', '24 Jam', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Utara', 'Ds. Dangin Puri Kaja', 'Kota Denpasar', '0361-235016', 'Jl. Nangka Selatan 11 C', 'No  Data', '2', '1', '72.840', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.5804191452904!2d115.21745007976273!3d-8.646967133360404!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23f619a8d8e39%3A0xd2299db3089ba46f!2sKlinik%20Pratama%20Asih%20Usadha!5e0!3m2!1sid!2sid!4v1669968990695!5m2!1sid!2sid', NULL, '2022-11-07 19:43:07', '2022-12-02 00:16:53');
INSERT INTO `faskes_categories` (`id`, `kode_fktp`, `title`, `slug`, `service_hour`, `about`, `kecamatan`, `desa`, `city`, `no_telp`, `address`, `perawat`, `dokter_umum`, `dokter_gigi`, `rating`, `jenis_faskes`, `gmap_embed`, `deleted_at`, `created_at`, `updated_at`) VALUES
(208, '0233B004', 'Klinik Mesari Usadha', 'klinik-mesari-usadha', 'SETIAP HARI 08.00-20.00', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Utara', 'Kel. Tonja', 'Kota Denpasar', '(0361)421504; 08123918414', 'Jl. Intan Lc Ii Gg I / 4', 'No  Data', '3', '1', '67.052', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.5981178583078!2d115.22363156351751!3d-8.634645946940063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23f6e0f45037b%3A0x5c28d90fd6de6a88!2sKlinik%20Mesari%20Usadha!5e0!3m2!1sid!2sid!4v1669969274231!5m2!1sid!2sid', NULL, '2022-11-07 19:43:45', '2022-12-02 00:22:19'),
(209, '0233B074', 'Klinik TPKK Denpasar', 'klinik-tpkk-denpasar', '08.00-17.00', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '(0361) 225664', 'Jl. Serma Tugir No.16', 'No  Data', '1', 'No Data', '78.679', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d541.5438815264133!2d115.21681753259726!3d-8.672348315299306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x91631f9b66c0049c!2zOMKwNDAnMjEuMSJTIDExNcKwMTMnMDEuMiJF!5e0!3m2!1sid!2sid!4v1669969970730!5m2!1sid!2sid', NULL, '2022-11-07 19:44:31', '2022-12-02 00:33:06'),
(210, '0233B075', 'Klinik Bina Usada', 'klinik-bina-usada', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Barat', 'Ds. Padang Sambian Kaja', 'Kota Denpasar', '0361-427504/0361-427508', 'Jalan Gatot Subroto Barat No. 101, Desa Ubung Kecamatan Denpasar Utara', 'No  Data', '3', '1', '85.939', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d452.1484398299055!2d115.1996980398261!3d-8.637151817720536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd238b40a337dc3%3A0x4b7ddbce7860c2f3!2sKlinik%20Bina%20Usada!5e0!3m2!1sid!2sid!4v1669970212669!5m2!1sid!2sid', NULL, '2022-11-09 17:53:41', '2022-12-02 00:39:24'),
(211, '0233B077', 'Klinik Petanu Medical Center', 'klinik-petanu-medical-center', '24 JAM', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Sidakarya', 'Kota Denpasar', '087761897593 / 081353205669', 'Jl. Tukad Petanu No 9c, Sidaka', 'No  Data', '4', '2', '0', 'Klinik Swasta', '', NULL, '2022-11-09 17:54:36', '2022-11-09 17:54:36'),
(212, '0233B078', 'Klinik Smile Medical Center', 'klinik-smile-medical-center', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Kel. Panjer', 'Kota Denpasar', '0361-8424805', 'Jl. Hayam Wuruk No 242 Blok 6', 'No  Data', '3', '1', '77.962', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d625.6870119246422!2d115.2407648267025!3d-8.664638114984381!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd24061159c11ad%3A0x16516e3777e8a4fb!2sSmile%20Medical%20Centre%20Bali!5e0!3m2!1sid!2sid!4v1669970688610!5m2!1sid!2sid', NULL, '2022-11-09 17:55:06', '2022-12-02 00:45:03'),
(213, '0233B079', 'Klinik Kimia Farma Sanur', 'klinik-kimia-farma-sanur', 'SETIAP HARI 08.00 - 21.00', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Ds. Sanur Kaja', 'Kota Denpasar', '0361-283395/0361-283397/082145451659', 'Jl Bay Pass Ngurah Rai No. 232', 'No  Data', '13', '4', '83.979', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d377.432618459997!2d115.25841703500137!3d-8.679069196271255!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd240484a082351%3A0x7476f4697ab0f173!2sApotek%20Kimia%20Farma%20173%20Sanur%20Bali!5e0!3m2!1sid!2sid!4v1669970955450!5m2!1sid!2sid', NULL, '2022-11-09 17:55:44', '2022-12-02 00:49:32'),
(214, '0233B080', 'Klinik Osadha', 'klinik-osadha', '24 JAM', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Timur', 'Kel. Penatih', 'Kota Denpasar', '0361-466487', 'Jl Nagasari No.33 Penatih', 'No  Data', '6', '1', '81.125', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d648.7751024687368!2d115.24408752818444!3d-8.613940710797426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23fae95214d77%3A0xdd3096588679fdbe!2sOSADHA%20CLINIC!5e0!3m2!1sid!2sid!4v1669971114059!5m2!1sid!2sid', NULL, '2022-11-09 17:56:35', '2022-12-02 00:52:15'),
(215, '0233B081', 'Klinik Bali Nusa Medika', 'klinik-bali-nusa-medika', 'SETIAP HARI 07.00 S/D 22.00', 'FKTP BPJS Kesehatan Wilayah Denpasar', 'Denpasar Selatan', 'Ds. Sidakarya', 'Kota Denpasar', '0361-8973030 / 087860118004', 'Jalan Mertasari Nomor 65a', 'No  Data', '2', '1', '65.941', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d930.6118674125354!2d115.22830311369027!3d-8.710960613926247!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd241733c082639%3A0x8fd7d2e54a174e98!2sKlinik%20Pratama%20Rawat%20Jalan%20Bali%20Nusa%20Medika!5e0!3m2!1sid!2sid!4v1669971273823!5m2!1sid!2sid', NULL, '2022-11-09 17:57:15', '2022-12-02 00:54:51'),
(216, '0233B082', 'Klinik Brimedika', 'klinik-brimedika', 'SENIN -SABTU 08.00 - 20.00 (Kecuali Hari Libur)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Pemecutan Kaja', 'Kota Denpasar', '0361-9076070', 'Jalan Bungtomo No.25 B', 'No  Data', '4', '2', '0', 'Klinik Swasta', '', NULL, '2022-11-09 17:58:18', '2022-11-09 17:58:18'),
(217, '0233B085', 'Klinik Barta Medika Denpasar', 'klinik-barta-medika-denpasar', '24 JAM', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Padang Sambian', 'Kota Denpasar', '0813-3728-4759', 'Jl. Gunung Andakasa No.7xx', 'No  Data', '5', '0', '0', 'Klinik Swasta', '', NULL, '2022-11-09 17:59:15', '2022-11-09 17:59:15'),
(218, '0233B086', 'Klinik Pratama Warmadewa', 'klinik-pratama-warmadewa', '08.00-15.00', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Sumerta', 'Kota Denpasar', '0361-239606', 'Jl. Akasia No.17, Sumerta, Denpasar Timur', 'No  Data', '4', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 17:59:57', '2022-11-09 17:59:57'),
(219, '0233B087', 'Klinik Omsa Medic', 'klinik-omsa-medic', '08.00-20.00', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0818311355 / (0361) 4747650', 'Jl. Pulau Kawe No. 9 B, Dauh Puri Klod, Denpasar Barat', 'No  Data', '3', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:00:39', '2022-11-09 18:00:39'),
(220, '0233B088', 'Klinik Graha Medika', 'klinik-graha-medika', '08.00-20.00', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Penatih', 'Kota Denpasar', '0361-4761726 / 081237464199', 'Jl. Trenggana No. 111, Penatih, Denpasar Timur Kota Denpasar', 'No  Data', '2', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:01:16', '2022-11-09 18:01:16'),
(221, '0233B089', 'Klinik Pedungan Medika', 'klinik-pedungan-medika', 'Setiap Hari (08.00-22.00)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Pedungan', 'Kota Denpasar', '0361-243171 / 087858597858', 'Jl. Pulau Bangka No. 1. A., Pedungan, Denpasar Selatan', 'No  Data', '2', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:01:50', '2022-11-09 18:01:50'),
(222, '0233U002', 'Klinik Bhaksena IDT', 'klinik-bhaksena-idt', '24 Jam', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0361225597', 'Jalan Diponegoro 150 Blok B134', 'No  Data', '3', '2', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:02:31', '2022-11-09 18:02:31'),
(223, '0233U003', 'Klinik Anugerah', 'klinik-anugerah', '24 Jam', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dauh Puri Kaja', 'Kota Denpasar', '081238841193', 'Jl.Nangka Selatan No.87', 'No  Data', '6', '3', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:03:09', '2022-11-09 18:03:09'),
(224, '0233U026', 'Klinik Bhakti Rahayu', 'klinik-bhakti-rahayu', 'SETIAP HARI 08.00-21.00', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Dalung', 'Kabupaten Badung', '0361 - 425187', 'Jl. Raya Padang Luwih No. 88 B', 'No  Data', '12', '3', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:03:55', '2022-11-09 18:04:22'),
(225, '0233U049', 'Klinik  Sudi Santhi', 'klinik-sudi-santhi', '09.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dangin Puri Kaja', 'Kota Denpasar', '0361424234', 'Jalan Cokroaminoto No.147', 'No  Data', '4', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:05:12', '2022-11-09 18:05:12'),
(226, '0233U056', 'Klinik Karya Prima', 'klinik-karya-prima', '24 Jam', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sesetan', 'Kota Denpasar', '0361237044/081907544849', 'Raya Sesetan No.342', 'No  Data', '10', '5', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:05:57', '2022-11-09 18:05:57'),
(227, '0233U060', 'Klinik  Werdhi Ayu', 'klinik-werdhi-ayu', 'SENIN -SABTU 08.00-22.00  (PERSALINAN 24 JAM )', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Padang Sambian', 'Kota Denpasar', '0361427348', 'Gunung Agung No.233', 'No  Data', '4', '1', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:06:36', '2022-11-09 18:06:36'),
(228, '0233U065', 'PPK I Sudirman (AD)', 'ppk-i-sudirman-ad', '\"SENIN-JUMAT PAGI  07.00-14.00 SORE 17.00-20.00 \"', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Dauh Puri', 'Kota Denpasar', '0361237948 / 085101451885', 'Pb Sudirman No.2', 'No  Data', '3', '1', '0', 'Klinik TNI', '', NULL, '2022-11-09 18:07:20', '2022-11-09 18:12:39'),
(229, '0233U067', 'PPK I Kepaon (AD)', 'ppk-i-kepaon-ad', 'SENIN-JUMAT 09.00-15.00', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Pemogan', 'Kota Denpasar', '0361237948', 'Jl.Zidam No.1', 'No  Data', '2', '1', '0', 'Klinik TNI', '', NULL, '2022-11-09 18:08:05', '2022-11-09 18:12:49'),
(230, '0233U068', 'BK. Lanal Dps (AL)', 'bk-lanal-dps-al', '07.30-14.00 SENIN - JUMAT (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sesetan', 'Kota Denpasar', '0361720917', 'Jl. Raya Sesetan No.331', 'No  Data', '2', '1', '0', 'Klinik TNI', '', NULL, '2022-11-09 18:14:26', '2022-11-09 18:14:26'),
(231, '0233U074', 'Klinik Penta Medica', 'klinik-penta-medica', '24 Jam', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '0361490709', 'Jl. Mahendradatta Selatan No. 88, Br. Abiantimbul, Desa Pemecutan Kelod, Denpasar Barat', 'No  Data', '16', '6', '0', 'Klinik Swasta', '', NULL, '2022-11-09 18:15:08', '2022-11-09 18:15:08'),
(232, '22020101', 'Puskesmas Tabanan I', 'puskesmas-tabanan-i', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Tabanan', 'Desa Sudimara', 'Kabupaten Tabanan', '0361814102', 'Jl. Yeh Gangga Br.Cengolo', 'No  Data', '4', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:15:50', '2022-11-09 18:18:34'),
(233, '22020102', 'Puskesmas Tabanan II', 'puskesmas-tabanan-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Tabanan', 'Desa Denbantas', 'Kabupaten Tabanan', '0361810650', 'Celagi Denbantas', 'No  Data', '4', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:19:51', '2022-11-09 18:19:51'),
(234, '22020201', 'UPTD. Puskesmas Kerambitan I', 'uptd-puskesmas-kerambitan-i', '\"Senin - Kamis : Pk. 07.30 WITA - 14.30 WITA, Jumat : Pk. 07.30 WITA - 11.30 WITA Sabtu : Pk. 07.30 WITA - 13.00 WITA\"', 'Data Tidak Tersedia', 'Kerambitan', 'Desa Samsam', 'Kabupaten Tabanan', '0361 4790303', 'Desa Sembung Gede', 'No  Data', '4', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:20:31', '2022-11-09 18:20:31'),
(235, '22020202', 'Puskesmas Kerambitan II', 'puskesmas-kerambitan-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Kerambitan', 'Desa Kerambitan', 'Kabupaten Tabanan', '0361814027', 'Jl. I Wayan Bered No 1', 'No  Data', '3', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:21:29', '2022-11-09 18:21:29'),
(236, '22020301', 'Puskesmas Selemadeg', 'puskesmas-selemadeg', '\"SENIN S/D KAMIS JAM 07.00 - 14.00, JUMAT 07.00 - 11.00, SABTU 07.00 - 12.00  DAN UGD 24 JAM \"', 'Data Tidak Tersedia', 'Selemadeg', 'Desa Bajera', 'Kabupaten Tabanan', '03618943636', 'Jl Rajawali No 20', 'No  Data', '6', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:22:05', '2022-11-09 18:22:05'),
(237, '22020302', 'Puskesmas Selmadeg Barat', 'puskesmas-selmadeg-barat', '\"SENIN S/D KAMIS JAM 07.00 - 14.00, JUMAT 07.00 - 11.00, SABTU 07.00 - 12.00 DAN UGD 24 JAM \"', 'Data Tidak Tersedia', 'Selemadeg Barat', 'Desa Langlanglinggah', 'Kabupaten Tabanan', '0361815181', 'Br. Dinas Surabrata', 'No  Data', '6', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:22:43', '2022-11-09 18:22:43'),
(238, '22020303', 'Puskesmas Selemadeg Timur I', 'puskesmas-selemadeg-timur-i', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Selemadeg Timur', 'Desa Megati', 'Kabupaten Tabanan', '081338727664', 'Jl. Raya Denpasar-Gilimanuk', 'No  Data', '2', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:23:26', '2022-11-09 18:23:26'),
(239, '22020304', 'Puskesmas Selemadeg Timur II', 'puskesmas-selemadeg-timur-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Selemadeg Timur', 'Desa Beraban', 'Kabupaten Tabanan', '03617444059', 'Beraban Selemadeg', 'No  Data', '3', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:24:02', '2022-11-09 18:24:02'),
(240, '22020401', 'Puskesmas Pupuan I', 'puskesmas-pupuan-i', '\"SENIN S/D KAMIS JAM 07.00 - 14.00, JUMAT 07.00 - 11.00, SABTU 07.00 - 12.00  DAN UGD 24 JAM \"', 'Data Tidak Tersedia', 'Pupuan', 'Desa Pupuan', 'Kabupaten Tabanan', '036271233', 'No., Jl. Raya Pupuan No.54,', 'No  Data', '3', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:24:44', '2022-11-09 18:24:44'),
(241, '22020402', 'Puskesmas Pupuan II', 'puskesmas-pupuan-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Pupuan', 'Desa Belimbing', 'Kabupaten Tabanan', '03617420660', 'Jl Raya Antosari Pupuan', 'No  Data', '2', '0', '0', 'Puskesmas', '', NULL, '2022-11-09 18:25:37', '2022-11-09 18:25:37'),
(242, '22020501', 'Puskesmas Penebel I', 'puskesmas-penebel-i', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Penebel', 'Desa Pitra', 'Kabupaten Tabanan', '03617464366', 'Jl. Raya Penebel', 'No  Data', '5', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:26:14', '2022-11-09 18:26:14'),
(243, '22020502', 'Puskesmas Penebel II', 'puskesmas-penebel-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Penebel', 'Desa Penatahan', 'Kabupaten Tabanan', '03617470395', 'Jl. Penatahan', 'No  Data', '2', '1', '0', 'Puskesmas', '', NULL, '2022-11-09 18:26:54', '2022-11-09 18:26:54'),
(244, '22020601', 'Puskesmas Marga I', 'puskesmas-marga-i', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Marga', 'Desa Marga', 'Kabupaten Tabanan', '03618946154', 'Jl. Wisnu Marga,', 'No  Data', '4', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:27:33', '2022-11-09 18:27:33'),
(245, '22020602', 'Puskesmas Marga II', 'puskesmas-marga-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Marga', 'Desa Kukuh', 'Kabupaten Tabanan', '085237103909', 'No., Jl. Raya Alas Kedaton No.', 'No  Data', '3', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:28:13', '2022-11-09 18:28:13'),
(246, '22020701', 'Puskesmas Baturiti I', 'puskesmas-baturiti-i', '\"SENIN S/D KAMIS JAM 07.00 - 14.00, JUMAT 07.00 - 11.00, SABTU 07.00 - 12.00 DAN UGD 24 JAM \"', 'Data Tidak Tersedia', 'Baturiti', 'Desa Angseri', 'Kabupaten Tabanan', '036821118', 'Jl Gn Agung Baturiti', 'No  Data', '6', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:29:27', '2022-11-09 18:29:27'),
(247, '22020702', 'Puskesmas Baturiti II', 'puskesmas-baturiti-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Baturiti', 'Desa Perean Tengah', 'Kabupaten Tabanan', '08123673551', 'Perean Kangin Baturiti', 'No  Data', '3', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:30:02', '2022-11-09 18:30:02'),
(248, '22020801', 'Puskesmas Kediri I', 'puskesmas-kediri-i', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Kediri', 'Desa Kediri', 'Kabupaten Tabanan', '0361812148', 'Jl. Teuku Umar No 10', 'No  Data', '3', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:30:43', '2022-11-09 18:30:43'),
(249, '22020802', 'Puskesmas Kediri II', 'puskesmas-kediri-ii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Kediri', 'Desa Kaba-Kaba', 'Kabupaten Tabanan', '0361814278', 'Kaba-Kaba Kediri', 'No  Data', '2', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:31:26', '2022-11-09 18:31:26'),
(250, '22020803', 'Puskesmas Kediri III', 'puskesmas-kediri-iii', '\"SENIN S/D KAMIS 07.00 - 14.00, JUMAT 07.00 - 11.00 , SABTU 07.00 - 12.00 \"', 'Data Tidak Tersedia', 'Kediri', 'Desa Beraban', 'Kabupaten Tabanan', '0361880670', 'L. Raya Munggu-By Pass Tanah L', 'No  Data', '4', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:32:22', '2022-11-09 18:32:22'),
(251, '22030101', 'Puskesmas Petang I', 'puskesmas-petang-i', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Petang', 'Desa Petang', 'Kabupaten Badung', '0361813379', 'Br. Petang Desa Petang', 'No  Data', '8', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:33:11', '2022-11-09 18:33:11'),
(252, '22030102', 'Puskesmas Petang II', 'puskesmas-petang-ii', '07.00-14.00', 'Data Tidak Tersedia', 'Petang', 'Desa Plaga', 'Kabupaten Badung', '03617424608 / 082897030075 / 082897030076', 'Br. Pelaga Desa Pelaga Kec.Petang', 'No  Data', '7', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:33:53', '2022-11-09 18:33:53'),
(253, '22030201', 'Puskesmas Abiansemal I', 'puskesmas-abiansemal-i', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Blahkiuh', 'Kabupaten Badung', '03618943222 / 03618943111', 'Jl. Raya Pelaga, Abiansemal', 'No  Data', '9', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:36:35', '2022-11-09 18:36:35'),
(254, '22030202', 'Puskesmas Abiansemal II', 'puskesmas-abiansemal-ii', '07.00-14.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Sedang', 'Kabupaten Badung', '0361460210', 'Jl. Raya Krasan Sedang', 'No  Data', '4', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:37:08', '2022-11-09 18:37:08'),
(255, '22030203', 'Puskesmas Abiansemal III', 'puskesmas-abiansemal-iii', '07.00-14.00', 'Data Tidak Tersedia', 'Abiansemal', 'Desa Sibangkaja', 'Kabupaten Badung', '03618463263', 'Jl. Ratna Br. Sintrig Ds.Sibangkaja Kec.Abiansemal', 'No  Data', '6', '2', '0', 'Puskesmas', '', NULL, '2022-11-09 18:37:38', '2022-11-09 18:37:38'),
(256, '22030301', 'Puskesmas Mengwi I', 'puskesmas-mengwi-i', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Mengwi', 'Desa Mengwitani', 'Kabupaten Badung', '0361829769', 'Jl. I Gusti Ngurah Rai Br. Panca Darma, Ds.Mengwitani, Kec.Mengwi', 'No  Data', '8', '4', '0', 'Puskesmas', '', NULL, '2022-11-09 18:38:11', '2022-11-09 18:38:11'),
(257, '22030302', 'Puskesmas Mengwi II', 'puskesmas-mengwi-ii', '07.00-14.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Tumbak Bayuh', 'Kabupaten Badung', '03618442063', 'Br. Gunung Pande, Desa Tumbak Bayuh', 'No  Data', '5', '0', '0', 'Puskesmas', '', NULL, '2022-11-09 18:38:40', '2022-11-09 18:38:40'),
(258, '22030303', 'Puskesmas Mengwi III', 'puskesmas-mengwi-iii', '07.00-14.00', 'Data Tidak Tersedia', 'Mengwi', 'Desa Sempidi', 'Kabupaten Badung', '03617439924 / 0361-422527', 'Jl. Raya Sempidi No.1 Br.Pande Ds.Sempidi Kec.Mengwi', 'No  Data', '10', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:39:13', '2022-11-09 18:39:13'),
(259, '22030401', 'Puskesmas Kuta I', 'puskesmas-kuta-i', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Kuta', 'Desa Kuta', 'Kabupaten Badung', '0361751311 / 0361-764814', 'Jl. Raya Kuta No. 117 Br Temacun Kuta', 'No  Data', '6', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:39:44', '2022-11-09 18:39:44'),
(260, '22030402', 'Puskesmas Kuta Selatan', 'puskesmas-kuta-selatan', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Kuta Selatan', 'Desa Benoa', 'Kabupaten Badung', '0361771975', 'Jl. Srikandi No.40 A Nusa Dua', 'No  Data', '9', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:40:17', '2022-11-09 18:40:17'),
(261, '22030403', 'Puskesmas Kuta Utara', 'puskesmas-kuta-utara', '07.00-14.00 (UGD 24 Jam)', 'Data Tidak Tersedia', 'Kuta Utara', 'Desa Kerobokan', 'Kabupaten Badung', '0361429981', 'Jl. Raya Kesambi Kerobokan', 'No  Data', '6', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:40:54', '2022-11-09 18:40:54'),
(262, '22030404', 'Puskesmas Kuta II', 'puskesmas-kuta-ii', '07.00-14.00', 'Data Tidak Tersedia', 'Kuta', 'Desa Legian', 'Kabupaten Badung', '0361750245', 'Jl. Sri Rama, Legian Kelod, Kuta (Sebelah Barat Kantor Lurah Legian)', 'No  Data', '5', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:41:31', '2022-11-09 18:41:31'),
(263, '22090101', 'Puskesmas I Denpasar Selatan', 'puskesmas-i-denpasar-selatan', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sesetan', 'Kota Denpasar', '0361721351', 'Jl. Gurita 8 Sesetan', 'No  Data', '4', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:42:40', '2022-11-09 18:42:40'),
(264, '22090102', 'Puskesmas II Denpasar Selatan', 'puskesmas-ii-denpasar-selatan', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sanur', 'Kota Denpasar', '0361281166', 'Jl. Danau Buyan III', 'No  Data', '4', '5', '0', 'Puskesmas', '', NULL, '2022-11-09 18:43:19', '2022-11-09 18:43:19'),
(265, '22090201', 'Puskesmas II Denpasar Utara', 'puskesmas-ii-denpasar-utara', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Pemecutan Kaja', 'Kota Denpasar', '0361433422', 'Jl. Gn. Agung Gg Ii No 8x', 'No  Data', '4', '6', '0', 'Puskesmas', '', NULL, '2022-11-09 18:43:53', '2022-11-09 18:43:53'),
(266, '22090202', 'Puskesmas II Denpasar Barat', 'puskesmas-ii-denpasar-barat', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '0361483343', 'Jl. Gn. Soputan 3', 'No  Data', '7', '6', '0', 'Puskesmas', '', NULL, '2022-11-09 18:44:36', '2022-11-09 18:44:36'),
(267, '22090203', 'Puskesmas III Denpasar Utara', 'puskesmas-iii-denpasar-utara', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dauh Puri Kaja', 'Kota Denpasar', '0361424875', 'Jl. A. Yani', 'No  Data', '3', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:45:22', '2022-11-09 18:45:22'),
(268, '22090204', 'Puskesmas I Denpasar Barat', 'puskesmas-i-denpasar-barat', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Tegal Harum', 'Kota Denpasar', '0361482045', 'Jl. Gn. Rinjani No 65', 'No  Data', '4', '5', '0', 'Puskesmas', '', NULL, '2022-11-09 18:45:58', '2022-11-09 18:45:58'),
(269, '22090301', 'Puskesmas I Denpasar Utara', 'puskesmas-i-denpasar-utara', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dangin Puri Kangin', 'Kota Denpasar', '0361245906', 'Jl.Angsoka No 17', 'No  Data', '4', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:46:29', '2022-11-09 18:46:29'),
(270, '22090302', 'Puskesmas I Denpasar Timur', 'puskesmas-i-denpasar-timur', '\"UGD & Persalinan 24 Jam;  Poli Umum dan Gigi pk 08.00 - 19.00\"', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Sumerta', 'Kota Denpasar', '03618491432 / 03618491432', 'Jl. Pucuk No. 1', 'No  Data', '10', '6', '0', 'Puskesmas', '', NULL, '2022-11-09 18:47:02', '2022-11-09 18:47:02'),
(271, '22090303', 'Puskesmas II Denpasar Timur', 'puskesmas-ii-denpasar-timur', '\"SENIN - KAMIS pk 08.00 - 12.00;  JUMAT 08.00 - 10.30; SABTU 08.00 - 11.30 \"', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Penatih Dangin Puri', 'Kota Denpasar', '0361461566', 'Jl. Nagasari No.25 A', 'No  Data', '5', '3', '0', 'Puskesmas', '', NULL, '2022-11-09 18:48:04', '2022-11-09 18:48:04'),
(272, '0233G005', 'drg. Ni Putu Ayu Ira Puspita', 'drg-ni-putu-ayu-ira-puspita', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Peguyangan', 'Kota Denpasar', '08174730109', 'Jl. A. Yani Utara No.146', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:49:12', '2022-11-09 18:49:12'),
(273, '0233G013', 'drg. Ni Md Agustini Dewi Rinjani', 'drg-ni-md-agustini-dewi-rinjani', '17.00-23.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kangin', 'Kota Denpasar', '08113808262', 'Jl. Mayjen Sutoyo No.38', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:49:45', '2022-11-09 18:49:45'),
(274, '0233G018', 'drg. Fince Lannita K.Hedo', 'drg-fince-lannita-khedo', '12.00-17.00 & 18.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kauh', 'Kota Denpasar', '08123929021', 'Jalan Nusa Kambangan Pertokoan Kertawijaya Block C 20', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:51:15', '2022-11-09 18:51:15'),
(275, '0233G020', 'drg. Kadek Dewi Mariani', 'drg-kadek-dewi-mariani', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Penatih Dangin Puri', 'Kota Denpasar', '0361467391', 'Wr. Supratman 192 Dangin Tangl', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:52:37', '2022-11-09 18:52:37'),
(276, '0233G059', 'drg. Ni Nyoman Adi Erawati', 'drg-ni-nyoman-adi-erawati', '09.00-12.00 & 18.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Sanur Kaja', 'Kota Denpasar', '08123977239', 'Jalan Danau Buyan No 7 Sanur Kaja', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:53:15', '2022-11-09 18:53:15'),
(277, '0233G060', 'drg. Iga Gde Oka Ardana', 'drg-iga-gde-oka-ardana', '15.00-21.00 (SENIN-JUMAT)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Dangin Puri Kelod', 'Kota Denpasar', '08155764446', 'Jl. Hayam Wuruk No.9', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:53:50', '2022-11-09 18:53:50'),
(278, '0233G061', 'drg. Ni Luh Dewi Ekayanti', 'drg-ni-luh-dewi-ekayanti', '09.00 - 13.00 & 17.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Penatih Dangin Puri', 'Kota Denpasar', '03619207409 / 081338566940', 'Jl. Surapati No. 20', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:54:25', '2022-11-09 18:54:25'),
(279, '0233G063', 'drg. Ketut Dima Putri Saraswati', 'drg-ketut-dima-putri-saraswati', '09.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kelod', 'Kota Denpasar', '082145995154', 'Jl. Merdeka No 2b', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:55:03', '2022-11-09 18:55:03'),
(280, '0233G064', 'drg. Putu Yetty Nugraha', 'drg-putu-yetty-nugraha', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Sidakarya', 'Kota Denpasar', '08174746554', 'Jl Raya Sesetan No.347 (Pegok)', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:55:37', '2022-11-09 18:55:37'),
(281, '0233G065', 'drg. I Putu Eka Yudi Saputra', 'drg-i-putu-eka-yudi-saputra', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '081805639940', 'Jalan Imam Bonjol No. 207 A D', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:56:08', '2022-11-09 18:56:08'),
(282, '0233G067', 'drg. Ni Made Christin Nursuny Wahyuniarsih', 'drg-ni-made-christin-nursuny-wahyuniarsih', '09.00-14.00 & 18.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kaja', 'Kota Denpasar', '08123829247', 'Jalan Nangka Utara No 270', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:56:50', '2022-11-09 18:56:50'),
(283, '0233G073', 'drg. A.A. Istri Neny Kencanawati', 'drg-aa-istri-neny-kencanawati', '\"SENIN - JUMAT 18.00 - 21.00 & SABTU 10.00 - 12.00  (Kecuali Hari Libur)\"', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '082147477676', 'Jl. Komodo No 14', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:57:23', '2022-11-09 18:57:23'),
(284, '0233G074', 'drg. Ni Putu Tania Chintya Dewi Karima', 'drg-ni-putu-tania-chintya-dewi-karima', 'SENIN - SABTU 16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Kesiman Kertalangu', 'Kota Denpasar', '087861259090', 'Jl Jepun Putih No.2', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:58:12', '2022-11-09 18:58:12'),
(285, '0233G075', 'drg. Putu Oka Putri Yuliana', 'drg-putu-oka-putri-yuliana', 'SENIN - JUMAT 17.00-21.00', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Pemecutan Kaja', 'Kota Denpasar', '087861870627', 'Jl Wibisana Utara Gg Alit No 3', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:58:47', '2022-11-09 18:58:47'),
(286, '0233G076', 'drg. Anggia Sekarsari, Skg', 'drg-anggia-sekarsari-skg', 'SENIN - SABTU 08.00 - 14.00', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Pemecutan', 'Kota Denpasar', '0361424426', 'Jl. Gunung Semeru No 8a', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:59:20', '2022-11-09 18:59:20'),
(287, '0233G077', 'drg. I Ketut Krishna Dharma', 'drg-i-ketut-krishna-dharma', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Kesiman Kertalangu', 'Kota Denpasar', '0818352076', 'Apotek Kimia Farma, Toh Pati', 'No  Data', '0', '1', '0', 'Dokter Gigi', '', NULL, '2022-11-09 18:59:53', '2022-11-09 18:59:53'),
(288, '0233U004', 'dr. I Made Arnawa', 'dr-i-made-arnawa', '18.00 - 24.00', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Renon', 'Kota Denpasar', '08155766934', 'Jl.Tukad Badung Ix No.9 Renon', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:00:25', '2022-11-09 19:00:25'),
(289, '0233U006', 'dr. Ni Made Darwini', 'dr-ni-made-darwini', '15.30-21.30 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Dangin Puri Kelod', 'Kota Denpasar', '03617923897', 'Raya Puputan No.58 Renon', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:00:53', '2022-11-09 19:00:53'),
(290, '0233U030', 'dr. Ida Ayu Miswarihati', 'dr-ida-ayu-miswarihati', '16.00-22.00 SENIN-SABTU, 08.00-10.00 (MINGGU DAN HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Dangin Puri', 'Kota Denpasar', '08123975009', 'Jl. Letda Suji No.2', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:01:22', '2022-11-09 19:01:22'),
(291, '0233U031', 'dr. I.G.A. Ayu Mas Widiastuti', 'dr-iga-ayu-mas-widiastuti', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sesetan', 'Kota Denpasar', '08123662094', 'Jl. Tukad Banyusari No. 1 A Denpasar', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:01:50', '2022-11-09 19:01:50'),
(292, '0233U034', 'dr. Ketut Catur Weda', 'dr-ketut-catur-weda', '15.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Sumerta', 'Kota Denpasar', '0361224411', 'Jl. Nusa Indah No 47', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:02:25', '2022-11-09 19:02:25'),
(293, '0233U035', 'dr. I Ketut Semarajaya', 'dr-i-ketut-semarajaya', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '08123926067', 'Jln. Teuku Umar Barat N0 38 (Apotik Puri Andika)', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:02:55', '2022-11-09 19:02:55'),
(294, '0233U039', 'dr. I Putu Milantika, M.P.H.', 'dr-i-putu-milantika-mph', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '0361485549', 'Jl. Gunung Krakatau No.17a', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:03:27', '2022-11-09 19:03:27'),
(295, '0233U041', 'dr. I Made Dwiguna Antara', 'dr-i-made-dwiguna-antara', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Ubung Kaja', 'Kota Denpasar', '08123625868', 'Jl. Ken Arok No.25', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:04:04', '2022-11-09 19:04:04'),
(296, '0233U042', 'dr. Ida Bagus Jelantik Manuaba', 'dr-ida-bagus-jelantik-manuaba', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Padang Sambian Kaja', 'Kota Denpasar', '081338779077', 'Jl. Kebo Iwa Utara No.22. Br.', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:04:40', '2022-11-09 19:04:40'),
(297, '0233U043', 'dr. I Ketut Widiyasa, M.PH', 'dr-i-ketut-widiyasa-mph', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Ubung', 'Kota Denpasar', '08123972795', 'Jl. Cokroaminoto No.152 Ubung', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:05:15', '2022-11-09 19:05:15'),
(298, '0233U044', 'dr. Ni Nym Ermy Setiari, M.Kes', 'dr-ni-nym-ermy-setiari-mkes', '17.00-23.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Padang Sambian', 'Kota Denpasar', '03617431079', 'Jl.Tunjung Sari Gang Menuri No', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:05:48', '2022-11-09 19:05:48'),
(299, '0233U045', 'dr. Gusti Putu Darmika', 'dr-gusti-putu-darmika', '09.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '081238163409', 'Jl. Diponegoro No.100 (Klinik', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:06:21', '2022-11-09 19:06:21'),
(300, '0233U050', 'dr. Putu Elly Supriathini, M.Kes', 'dr-putu-elly-supriathini-mkes', '07.00-09.00 &17.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Tegal Harum', 'Kota Denpasar', '0361481753', 'Jl. Gunung Rinjani Ii No 3', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:06:57', '2022-11-09 19:06:57'),
(301, '0233U051', 'dr. Ida Ayu Gita Puspita', 'dr-ida-ayu-gita-puspita', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Sesetan', 'Kota Denpasar', '0361724546', 'Raya Sesetan 222', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:07:29', '2022-11-09 19:07:29'),
(302, '0233U052', 'dr. Luh Putu Asri Indriani Wirya, M.Biomed (AAM)', 'dr-luh-putu-asri-indriani-wirya-mbiomed-aam', '13.00-18.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Tonja', 'Kota Denpasar', '08123888769', 'Jl. Nangka Utara Perumahan Gra', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:08:04', '2022-11-09 19:08:04'),
(303, '0233U053', 'dr. I Made Sudiana,Mars', 'dr-i-made-sudianamars', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Kesiman', 'Kota Denpasar', '0361467799', 'Wr. Supratman 303 F Tohpati', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:08:35', '2022-11-09 19:08:35'),
(304, '0233U055', 'dr. Ni Ketut Suyasni', 'dr-ni-ketut-suyasni', '09.00-21.00(KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Dauh Puri', 'Kota Denpasar', '03619207409', 'Jl. Surapati No. 20', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:09:06', '2022-11-09 19:09:06'),
(305, '0233U059', 'dr. Ketut Sukadani S.Ked', 'dr-ketut-sukadani-sked', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '081238235243', 'Jl. Imam Bonjol No.207 A', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:09:38', '2022-11-09 19:09:38'),
(306, '0233U061', 'dr. Anak Agung Ngurah Gede Dharmayuda', 'dr-anak-agung-ngurah-gede-dharmayuda', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Kesiman', 'Kota Denpasar', '0361227317', 'Jl. Turi No.5', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:10:10', '2022-11-09 19:10:10'),
(307, '0233U062', 'dr. Made Agus Hendrayana', 'dr-made-agus-hendrayana', '17.00-23.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Panjer', 'Kota Denpasar', '08123921590', 'Jl. Tukad Pakerisan No 99i', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:10:44', '2022-11-09 19:10:44'),
(308, '0233U064', 'dr. Ni Made Yuniti, MM', 'dr-ni-made-yuniti-mm', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Pemecutan Kaja', 'Kota Denpasar', '0361420153', 'Maruti No.18 Marga Jati', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:11:15', '2022-11-09 19:11:15'),
(309, '0233U071', 'dr. I Dewa Putu Sidania', 'dr-i-dewa-putu-sidania', '10.00 - 14.00 & 19.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Pemecutan', 'Kota Denpasar', '08123988106', 'Jl Gunung Agung No 70', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:11:54', '2022-11-09 19:11:54'),
(310, '0233U149', 'dr. I Gusti Ayu Ratri Widyati Suteja', 'dr-i-gusti-ayu-ratri-widyati-suteja', '08.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kauh', 'Kota Denpasar', '08123963067', 'Jl. Gadung No. 9', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:12:29', '2022-11-09 19:12:29'),
(311, '0233U077', 'Prof. dr. I Nyoman Mangku Karmaya', 'prof-dr-i-nyoman-mangku-karmaya', '06.00-08.00 & 18.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kaja', 'Kota Denpasar', '0811387105', 'Jalan Kenyeri Gang Merak No.15', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:13:01', '2022-11-09 19:13:01'),
(312, '0233U148', 'dr. Gede Birawa, S.Ked', 'dr-gede-birawa-sked', 'SENIN - SABTU 16.00 - 22.00', 'Data Tidak Tersedia', 'Denpasar Barat', 'Desa Pemecutan', 'Kota Denpasar', '0361467553', 'Jl. Gunung Batukaru No. 72 Denpasar', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:13:46', '2022-11-09 19:13:46'),
(313, '0233U078', 'dr. Lanawati', 'dr-lanawati', '06.00-07.00 & 16.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Tegal Harum', 'Kota Denpasar', '08123618721', 'Jl. Buana Kubu Gg.Asam I No.10', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:14:19', '2022-11-09 19:14:19'),
(314, '0233U082', 'dr. Ida Ayu Putri Widhiastuti', 'dr-ida-ayu-putri-widhiastuti', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kauh', 'Kota Denpasar', '08124695325', 'Jl. Ratna No.24', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:15:44', '2022-11-09 19:15:44'),
(315, '0233U087', 'dr. Partha Negara', 'dr-partha-negara', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Pemecutan', 'Kota Denpasar', '081338738208', 'Jl. Gunung Agung No. 147 Denpa', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:16:26', '2022-11-09 19:16:26'),
(316, '0233U147', 'dr. Emilia Sabiruddin', 'dr-emilia-sabiruddin', 'Setiap Hari (15.00-22.00)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0812-3812-0523 / 081337424774', 'Jl Pb Sudirman No 19 A', 'No Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:17:35', '2022-11-09 19:17:35'),
(317, '0233U146', 'dr. I Gede Koko Gustrawan', 'dr-i-gede-koko-gustrawan', 'Setiap Hari (08.00-22.00)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Renon', 'Kota Denpasar', '081338338680', 'Jl. Tukad Badung No. 108 Denpasar', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:18:15', '2022-11-09 19:18:15'),
(318, '0233U145', 'dr. I Ketut Gede Wirantaja', 'dr-i-ketut-gede-wirantaja', 'Setiap Hari (08.00-21.00)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0819-9968-0826', 'Jl. Pulau Roti No. 12, Pedungan, Denpasar Selatan, Kota Denpasar', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:18:45', '2022-11-09 19:18:45'),
(319, '0233U144', 'dr. Alicia Dipta Pranudia', 'dr-alicia-dipta-pranudia', 'Senin s.d Sabtu (16.00 -22.00)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0813 92814558', 'Jl. Pulau Nusa Penida No. 33 Denpasar Barat', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:19:19', '2022-11-09 19:19:19'),
(320, '0233U143', 'dr. Anom Sapariati', 'dr-anom-sapariati', 'Senin s.d Sabtu (15.00 s.d 21.00)', 'Data Tidak Tersedia\r\nData Tidak Tersedia', 'Denpasar Utara', 'Ds. Dangin Puri Kangin', 'Kota Denpasar', '081237171401', 'Jl. Cargo Kenangan IV (depan GOR Merpati), Denpasar Utara Banjar Uma Sari Desa Ubung Kaja, Kelurahan Dangin Puri Kangin', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:20:13', '2022-11-09 19:20:13'),
(321, '0233U088', 'dr. Ida Ayu Dewi Wiryanthini', 'dr-ida-ayu-dewi-wiryanthini', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Padang Sambian', 'Kota Denpasar', '081239990399', 'Jl. Buluh Indah No. 98 (Apotek', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:20:48', '2022-11-09 19:20:48'),
(322, '0233U089', 'dr. I Gusti Putu Wiradharma Liran', 'dr-i-gusti-putu-wiradharma-liran', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Pemogan', 'Kota Denpasar', '08123965717', 'Jl. Raya Pemogan Banjar Jabaja', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:21:22', '2022-11-09 19:21:22'),
(323, '0233U094', 'dr. Anak Agung Ayu Wacika Bagawanti', 'dr-anak-agung-ayu-wacika-bagawanti', '09.00 - 12.00 & 18.00 - 21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Peguyangan', 'Kota Denpasar', '08123958692', 'Jl. Ken Arok No 1', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:22:04', '2022-11-09 19:22:04'),
(324, '0233U095', 'dr. Anak Agung Gede Swandewi', 'dr-anak-agung-gede-swandewi', '10.00-19.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Timur', 'Ds. Sumerta Kauh', 'Kota Denpasar', '081859766', 'Jl. Plawa No.33', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:22:38', '2022-11-09 19:22:38'),
(325, '0233U099', 'dr. Cokorda Istri Devi Larayanthi', 'dr-cokorda-istri-devi-larayanthi', '24 Jam', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '081246573917', 'Jl. Imam Bonjol 177', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:23:13', '2022-11-09 19:23:13'),
(326, '0233U102', 'dr. Ni Putu Ari Widayani', 'dr-ni-putu-ari-widayani', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '08123763047', 'Jl. Imam Bonjol Gg. Gunung Sab', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:23:51', '2022-11-09 19:23:51'),
(327, '0233U105', 'dr. I Made Liang Harta Negara', 'dr-i-made-liang-harta-negara', '17.00-23.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Ubung Kaja', 'Kota Denpasar', '0361-8443014/ 08123678007', 'Jl.Hos.Cokroaminoto No 355', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:24:22', '2022-11-09 19:24:22'),
(328, '0233U111', 'dr. Ni Wayan Milawati', 'dr-ni-wayan-milawati', '16.00 - 22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Pemecutan Kelod', 'Kota Denpasar', '081805599189', 'Jalan Segina No 5', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:25:00', '2022-11-09 19:25:00'),
(329, '0233U113', 'dr. Ni Luh  Gde Armini', 'dr-ni-luh-gde-armini', '16.00-22.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Serangan', 'Kota Denpasar', '087861273274', 'Jl. Tukad Semanik No. 39 Denpa', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:25:33', '2022-11-09 19:25:33'),
(330, '0233U116', 'dr. I Gusti Agung Putri Winanthy', 'dr-i-gusti-agung-putri-winanthy', '15.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Kel. Panjer', 'Kota Denpasar', '08123918644', 'Jl Hayam Wuruk No.96', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:26:14', '2022-11-09 19:26:14'),
(331, '0233U118', 'dr. Ni Wayan Eka Rahayu Dewi', 'dr-ni-wayan-eka-rahayu-dewi', '09.00-21.00 (KECUALI HARI LIBUR)', 'Data Tidak Tersedia', 'Denpasar Selatan', 'Ds. Sanur Kaja', 'Kota Denpasar', '081236218814 / 082145548541', 'Jl. Danau Beratan, Anggarkasih', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:26:49', '2022-11-09 19:26:49'),
(332, '0233U129', 'dr. I Nyoman Diane', 'dr-i-nyoman-diane', 'SENIN -SABTU (PAGI : 09.00-14.00 SORE : 17.00-21.00)', 'Data Tidak Tersedia', 'Denpasar Barat', 'Kel. Pemecutan', 'Kota Denpasar', '0361-424426', 'Jalan Gunung Semeru No 8a', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:27:20', '2022-11-09 19:27:20'),
(333, '0233U130', 'dr. I Gusti Ayu Prapti Adnyani', 'dr-i-gusti-ayu-prapti-adnyani', 'SENIN- JUMAT  08.00-16.00, SABTU  :08.00-12.00', 'Data Tidak Tersedia', 'Denpasar Barat', 'Ds. Dauh Puri Kelod', 'Kota Denpasar', '0361-222918', 'Jalan Diponegoro Pertokoan Genteng Biru A26', 'No  Data', '3', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:27:55', '2022-11-09 19:27:55'),
(334, '0233U133', 'dr. Intan Lestari Putri', 'dr-intan-lestari-putri', 'SENIN-SABTU 15.30-21.30', 'Data Tidak Tersedia', 'Denpasar Timur', 'Kel. Penatih', 'Kota Denpasar', '089526718152', 'Jl Trenggana No Xx Banjar Pelagan Desa Penatih Kecamatan Denpasar Tmur', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:28:29', '2022-11-09 19:28:29'),
(335, '0233U134', 'dr. Putu Ayu Paramita Satriawan', 'dr-putu-ayu-paramita-satriawan', 'SENIN-MINGGU 08.00-20.00', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dauh Puri Kaja', 'Kota Denpasar', '0361-4743564', 'Jalan Gatot Subroto II D No 1', 'No  Data', '2', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:28:59', '2022-11-10 01:00:43'),
(336, '0233U140', 'dr. Ni Nyoman Astriningsih', 'dr-ni-nyoman-astriningsih', 'SETIAP HARI Pukul 09.00 s.d  15.00 WITA', 'Data Tidak Tersedia', 'Denpasar Utara', 'Ds. Dangin Puri Kangin', 'Kota Denpasar', '087861956952', 'Jl. Gatot Subroto VI R No. 5 Denpasar Desa Dangin Puri Kangin Kec. Denpasar Utara, Denpasar', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:29:50', '2022-11-09 19:29:50'),
(337, '0233U141', 'dr. Putu Marlyani Dewi', 'dr-putu-marlyani-dewi', 'Senin s.d Sabtu (14.00-20.00)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Ubung', 'Kota Denpasar', '081238720230', 'Jl. Mahendradatta Utara No. 18 A , Ubung Kec. DenpasarBarat', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:31:02', '2022-11-09 19:31:02'),
(338, '0233U142', 'dr. Ayu Setiawati Kencana Putri', 'dr-ayu-setiawati-kencana-putri', 'Senin s.d Sabtu (15.00 s.d 21.00)', 'Data Tidak Tersedia', 'Denpasar Utara', 'Kel. Tonja', 'Kota Denpasar', '0361-236053 / 083114964158', 'Jl. Kenyeri No. 156 Kelurahan Tonja Denpasar Utara', 'No  Data', '1', '0', '0', 'Dokter Umum', '', NULL, '2022-11-09 19:31:42', '2022-11-09 19:31:42'),
(339, '0000', 'Test', 'test', '07.00-14.00', 'Test', 'Pupuan', 'Desa Bantas', 'Kota Denpasar', '0817346917', 'Politeknik Negeri Bali', '10', '10', '10', '90', 'Dokter Umum', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3833.174765866879!2d115.12173638711957!3d-8.548282252588002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23a42fa944f47%3A0x595627dd6d96dcb!2sBabi%20guling%20Bu%20Agus!5e0!3m2!1sid!2sid!4v1674003996515!5m2!1sid!2sid', NULL, '2023-01-17 17:07:47', '2023-01-17 17:07:47'),
(340, '0000304', 'Yellow Clinic', 'yellow-clinic', '24 jam', '-', 'Denpasar Barat', 'Banjar Anyar', 'Kota Denpasar', '035345345425', 'jalan yellow', '1', '1', '1', '90', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.639861518917!2d115.13242707472105!3d-8.534299991508613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x853967654ff95871!2zOMKwMzInMDMuNSJTIDExNcKwMDgnMDYuMCJF!5e0!3m2!1sid!2sid!4v1669778637151!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade', '2023-02-09 04:25:48', '2023-02-09 04:23:50', '2023-02-09 04:25:48'),
(341, '123456', 'Yellow Clinic', 'yellow-clinic', '24 JAM', 'test', 'Denpasar Barat', 'Abiansemal', 'Kota Denpasar', '090987798768967', 'test', '8', '10', '1', '80', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.6771418834396!2d115.12541687472084!3d-8.530691691512098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd23af73f2cd7fb%3A0xa4618829cbc1c4c4!2sUPTD%20Puskesmas%20Tabanan%20III!5e0!3m2!1sid!2sid!4v1669785689416!5m2!1sid!2sid', NULL, '2023-02-09 16:13:39', '2023-02-09 16:13:39'),
(342, '01010101', 'Klinik PNB', 'klinik-pnb', '24 Jam', 'Klinik ini dimiliki oleh Politeknik Negeri Bali', 'Kuta Selatan', 'Jimbaran<', 'Kabupaten Badung', '0361-701981', 'Kampus Bukit, Jimbaran, Kec. Kuta Sel., Kabupaten Badung, Bali 80364', '3', '2', '1', '40', 'Klinik Swasta', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2149.860027477287!2d115.16144669582715!3d-8.799149935025095!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd244c13ee9d753%3A0x6c05042449b50f81!2sPoliteknik%20Negeri%20Bali!5e0!3m2!1sid!2sid!4v1676802119143!5m2!1sid!2sid', '2023-02-19 23:27:19', '2023-02-19 02:23:08', '2023-02-19 23:27:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faskes_categories_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `faskes_categories_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/sUxv0wNWZsGbNZ2PP9WrxF5LzRUSazQkvi7fzaDU.jpg', NULL, '2022-06-20 05:45:44', '2022-12-27 00:37:21'),
(2, 2, 'assets/gallery/iaznF1BqqT1KoPjVDzWY6aSgNUTWG4br76wwTbZg.png', NULL, '2022-06-20 07:07:47', '2022-09-07 00:44:58'),
(3, 3, 'assets/gallery/DzS6FoTgb7vBnsLfM6SUYdGDi8qJ2Es4e913TPmW.jpg', NULL, '2022-06-20 07:09:05', '2022-10-12 07:07:54'),
(4, 4, 'assets/gallery/XeVeFPf1X2jSXpJLgidhuo2ZO1rWSh8NzDWFvu9Y.png', NULL, '2022-06-20 07:09:15', '2022-10-12 07:07:02'),
(5, 6, 'assets/gallery/PMvAUKE1JvzJjxcmW0zz8Dgi0SUdAlPWXubkASaU.png', NULL, '2022-11-09 22:34:07', '2022-11-09 22:34:07'),
(6, 9, 'assets/gallery/1feJ0Y1wTmNmY463oDFLsq88sbvzCTmucLIozzt1.png', NULL, '2022-11-29 21:38:17', '2022-11-29 21:38:17'),
(7, 8, 'assets/gallery/CI0hRut7s5p0P9oamhGmR0lrfqFRBH6lMSTltboF.png', NULL, '2022-11-29 21:55:47', '2022-11-29 21:55:47'),
(8, 10, 'assets/gallery/vMEUviCqYPWIwwHl95543wk7QwhtUDr6Sst1s366.png', NULL, '2022-11-29 22:17:00', '2022-11-29 22:17:00'),
(9, 11, 'assets/gallery/gJoo9jpUnaH19RNkKiMJFNGDQuqiiFWlE51L44HI.png', NULL, '2022-11-29 22:28:11', '2022-11-29 22:28:11'),
(10, 11, 'assets/gallery/Xt1FpMCRMvTD00sz0g9EkjknTyYDUzdbvP2ehV39.png', NULL, '2022-11-29 22:28:51', '2022-11-29 22:28:51'),
(11, 12, 'assets/gallery/RXLkqfoWLSc4VstRJiigbeONM0zDJpYjQ3Zb6ukj.png', NULL, '2022-11-29 22:41:00', '2022-11-29 22:41:00'),
(12, 12, 'assets/gallery/JplmoV1NnB40Zm7bhzKRyVNrVllI6ds2abYnR3eQ.png', NULL, '2022-11-29 22:41:09', '2022-11-29 22:41:09'),
(13, 13, 'assets/gallery/am4mYckucnQ0M3bJhXrlaQxBFmYTzrnPPGChKTbc.png', NULL, '2022-11-29 22:55:46', '2022-11-29 22:55:46'),
(14, 14, 'assets/gallery/uojjuk7ZCTxBqXWSjMNxbOibW0dY1nQVnSohgFfa.png', '2022-11-29 23:02:49', '2022-11-29 23:00:46', '2022-11-29 23:02:49'),
(15, 14, 'assets/gallery/mjNXFPADtPm5x7NyiXyAF1cUCZbVObQuNiCeqgs2.png', '2022-11-29 23:02:43', '2022-11-29 23:01:05', '2022-11-29 23:02:43'),
(16, 14, 'assets/gallery/0CDViGN5uleP0rryPmFS1oZO0FPxXL3vtLNxFPM9.png', NULL, '2022-11-29 23:02:15', '2022-11-29 23:02:15'),
(17, 14, 'assets/gallery/7ofS05mcGjml41HM8yq4HMC6aJgBkWwifouHdmnZ.png', NULL, '2022-11-29 23:02:59', '2022-11-29 23:02:59'),
(18, 15, 'assets/gallery/kUhGlX8ArHuHhUJAI0YrV93lphTHC5po4ftghNdE.png', NULL, '2022-11-29 23:11:51', '2022-11-29 23:11:51'),
(19, 17, 'assets/gallery/EWOiuWCBlxol4UFQ3uwKcv7F77ZFsJisNIVeGu9v.png', NULL, '2022-11-29 23:14:19', '2022-11-29 23:14:19'),
(20, 19, 'assets/gallery/O9KX5jzlKExX5xRkUOlUCw6IUs0NtLZEDxvcGCm3.png', NULL, '2022-11-29 23:20:30', '2022-11-29 23:20:30'),
(21, 27, 'assets/gallery/HnjLKW7pWrmLrnQFSXhyVBwByQqPLv7mzmCyAU8q.jpg', '2022-11-29 23:32:43', '2022-11-29 23:27:41', '2022-11-29 23:32:43'),
(22, 27, 'assets/gallery/5A04pwXF4RN2FjL0PfJPMbz9ga6vvGl1sSXfM5B8.jpg', NULL, '2022-11-29 23:33:29', '2022-11-29 23:33:29'),
(23, 27, 'assets/gallery/2NzBOV6pck06A1LJriPVWcGpMEcujeo4fqwfAfM6.jpg', NULL, '2022-11-29 23:33:47', '2022-11-29 23:33:47'),
(24, 30, 'assets/gallery/tiv83owDgcOkgc7K2i58IFZQhfmsc95OVuDSlYV4.png', NULL, '2022-11-29 23:37:27', '2022-11-29 23:37:27'),
(25, 31, 'assets/gallery/x0MX3dbtWi32Xx6jcFL9wtXbQNqW62vKLsfdYTyG.png', NULL, '2022-11-29 23:39:49', '2022-11-29 23:39:49'),
(26, 32, 'assets/gallery/LfTFnvcJrZ0BTMhmhx4Ck3LWsZGN1aibSHpJ6AT0.png', NULL, '2022-11-30 00:00:15', '2022-11-30 00:00:15'),
(27, 35, 'assets/gallery/jQkSYjiUE9q4Dh4LEKbhsWzn5pyf82gDsyOErRHP.png', NULL, '2022-11-30 00:04:14', '2022-11-30 00:04:14'),
(28, 37, 'assets/gallery/D4iCk3KCTOvipM1INB3juW6CBFWJzn5GptrnI2YD.png', NULL, '2022-11-30 00:17:55', '2022-11-30 00:17:55'),
(29, 38, 'assets/gallery/LEeYwpjCqh2835BxRpgMKCagJGthoiLSENiyKjyv.png', NULL, '2022-11-30 00:21:19', '2022-11-30 00:21:19'),
(30, 39, 'assets/gallery/axBMeeRb5cGruj9tlSAgq1wZ2Opq8mAJV7cOm8FP.png', NULL, '2022-11-30 00:26:27', '2022-11-30 00:26:27'),
(31, 43, 'assets/gallery/KW6npceGOD1K8C5BD6bjewru8IYFxKuvXeSYlOPC.png', NULL, '2022-11-30 00:35:05', '2022-11-30 00:35:05'),
(32, 47, 'assets/gallery/Sq8SYwwQOQP4tBUDExw9vQGbYwBNxy5gMx4u5qkU.png', NULL, '2022-11-30 00:41:30', '2022-11-30 00:41:30'),
(33, 50, 'assets/gallery/EiUn3rHfTTqTIFyqd4ac8RyH0Fv2AvjZDhxV1AE9.png', NULL, '2022-11-30 00:46:44', '2022-11-30 00:46:44'),
(34, 51, 'assets/gallery/K9g1W0SL5ZYhXU9DukGSXhoz5jEnlxQNocBOGcGs.png', NULL, '2022-11-30 00:49:57', '2022-11-30 00:49:57'),
(35, 55, 'assets/gallery/TVsY4K2xxdKufN66XC9ngrKsNplGG4MgV71skErM.png', NULL, '2022-11-30 00:57:41', '2022-11-30 00:57:41'),
(36, 56, 'assets/gallery/vREWMbERteml7JeOnp8IP1kikTatePGb2U0TVvr0.png', NULL, '2022-11-30 18:35:54', '2022-11-30 18:35:54'),
(37, 59, 'assets/gallery/D4WiCvMIAQg6VW4qscv1MbN7zshtQCSncYM6er7V.png', NULL, '2022-11-30 18:40:29', '2022-11-30 18:40:29'),
(38, 62, 'assets/gallery/MASsNV3k3Ph8uQvKoUVwees8Wh1iHrKzNsR9dc31.png', NULL, '2022-11-30 18:45:30', '2022-11-30 18:45:30'),
(39, 64, 'assets/gallery/vnbuwmOJsNv0EHGqBCSmDxrAoG36n3X3eeGIJRhZ.png', NULL, '2022-11-30 18:53:35', '2022-11-30 18:53:35'),
(40, 65, 'assets/gallery/U4VEZII6GyOE5NIL3yOEbYYFrZG10AEZZYW04jUG.png', NULL, '2022-11-30 19:27:15', '2022-11-30 19:27:15'),
(41, 66, 'assets/gallery/Zrtkm1t1OCqkyPoST2AJ9sdJcWVE4y6dWUJOLxRg.png', NULL, '2022-11-30 19:46:07', '2022-11-30 19:46:07'),
(42, 70, 'assets/gallery/VzJdlystbYh3Ktaa171wrVL3ILJteAbClCac1Khm.png', NULL, '2022-11-30 19:52:50', '2022-11-30 19:52:50'),
(43, 71, 'assets/gallery/Eooomw7w8zT1H5H214sWtriFGwrpFRpz4OTZ8TlY.jpg', NULL, '2022-11-30 20:00:22', '2022-11-30 20:00:22'),
(44, 71, 'assets/gallery/EBt0zjbzS7dZraZPtr9gEc2kJqomKS1dWJdijRuY.jpg', NULL, '2022-11-30 21:22:06', '2022-11-30 21:22:06'),
(45, 71, 'assets/gallery/FNpphhJrZMBVkU95hfL0iq4GNSYhPsXNIelvUSlk.jpg', NULL, '2022-11-30 21:22:27', '2022-11-30 21:22:27'),
(46, 71, 'assets/gallery/POzfoBGVqrUtQAt2wa4YFFxfsqPGN9wjAcxA8dmC.jpg', NULL, '2022-11-30 21:22:39', '2022-11-30 21:22:39'),
(47, 72, 'assets/gallery/g0BTDYSqnnomibAlkSEeqhbigruRWzvTZNVWCKqk.png', NULL, '2022-11-30 21:47:15', '2022-11-30 21:47:15'),
(48, 73, 'assets/gallery/WXzXnoZ9ONt1keCEkH4t3rm8D73CkJeNuLlKIFJj.png', NULL, '2022-11-30 21:52:13', '2022-11-30 21:52:13'),
(49, 74, 'assets/gallery/VxNxBl0SmwpWTkYLTBX2ulEbhEW0UGfB6KNEh42W.jpg', NULL, '2022-11-30 21:58:27', '2022-11-30 21:58:27'),
(50, 75, 'assets/gallery/P1sVd0PEFUyDwVDXBgQ96x3auWuKtBVmmRwn3lIi.jpg', NULL, '2022-11-30 22:02:23', '2022-11-30 22:02:23'),
(51, 75, 'assets/gallery/JXHwaQPhzy9438XzwWKNC9vAIQmYHxmBxeHRRq2N.jpg', NULL, '2022-11-30 22:03:54', '2022-11-30 22:03:54'),
(52, 75, 'assets/gallery/hgwznMLWm0z76fDOn3ZmihuCtiPaXypiFpQgiI7q.jpg', NULL, '2022-11-30 22:04:47', '2022-11-30 22:04:47'),
(53, 76, 'assets/gallery/RNkLaRz1HcuKiMKpHpPhKUdfFH1VjvFTqyLIDyNO.jpg', NULL, '2022-11-30 22:13:50', '2022-11-30 22:13:50'),
(54, 76, 'assets/gallery/NKvxMs3xMpYrheblgJNbNdQYxjBfzEbsGMpLH9GN.jpg', NULL, '2022-11-30 22:14:04', '2022-11-30 22:14:04'),
(55, 76, 'assets/gallery/z61LY7PSHvS3QHBiyuZBD82N7a4PtVgUM7jlpyAF.jpg', NULL, '2022-11-30 22:14:20', '2022-11-30 22:14:20'),
(56, 76, 'assets/gallery/UmKUfAdA667F4uu5O3Gpvy9yMTjQchq005WCniJn.jpg', NULL, '2022-11-30 22:14:59', '2022-11-30 22:14:59'),
(57, 78, 'assets/gallery/ZDq3U4zBt5eUAWMvbpjIT2XB7lA82rl2NURkHeYl.jpg', NULL, '2022-11-30 22:29:53', '2022-11-30 22:29:53'),
(58, 79, 'assets/gallery/jlXljPSpOCBot3mpOHK0gBuoY72M6L6iebyLSK9Y.png', NULL, '2022-11-30 22:34:39', '2022-11-30 22:34:39'),
(59, 80, 'assets/gallery/tlK54qvbDR5jax8IWSFZ3hQsOZGk3MQp768UOODA.png', NULL, '2022-11-30 22:38:10', '2022-11-30 22:38:10'),
(60, 81, 'assets/gallery/i4Jub6MhdpyyAFOyNt9o5ZDvMXav5h6PmB6EFM67.png', NULL, '2022-11-30 22:41:21', '2022-11-30 22:41:21'),
(61, 82, 'assets/gallery/bITWHixIYxKkYJMXLoqOByXKuEBYxXaTMnqvI5TF.jpg', NULL, '2022-11-30 22:46:55', '2022-11-30 22:51:27'),
(62, 83, 'assets/gallery/La5qfGMPFAVj6YRWZxxdTHjB08oGtXIUnfWkUq4R.png', NULL, '2022-11-30 22:55:41', '2022-11-30 22:55:41'),
(63, 84, 'assets/gallery/mG5hMwcxPRnJQuM9tVSGT2tE810chEVfo6droTLk.png', NULL, '2022-11-30 22:58:50', '2022-11-30 22:58:50'),
(64, 85, 'assets/gallery/63uMCFWXA5d5zOD6XmBogZc1aAAavS6ScHPERY5U.png', NULL, '2022-11-30 23:01:53', '2022-11-30 23:01:53'),
(65, 86, 'assets/gallery/MD8SfCYtWi1Tvt97w3xTPxGaoEPjNOxgCWFndmwh.jpg', NULL, '2022-11-30 23:06:30', '2022-11-30 23:06:30'),
(66, 87, 'assets/gallery/j6atgnZvvPubVJxhlAKDvAbCYXtFvIdxi1WZNBwU.png', NULL, '2022-11-30 23:12:51', '2022-11-30 23:12:51'),
(67, 88, 'assets/gallery/Gndg5z0payzHjdGg7rKRTr3Is3sB9kTjzU0b31aV.jpg', NULL, '2022-11-30 23:20:14', '2022-11-30 23:20:14'),
(68, 90, 'assets/gallery/AevARHY5eesbMHpZTZYuqJf5Ak8ts942b2RpRnUW.jpg', NULL, '2022-11-30 23:27:18', '2022-11-30 23:27:18'),
(69, 91, 'assets/gallery/rx2epjPkwYeDuwxpaJZff1t91JFkLtSS5EWXLlQx.png', NULL, '2022-11-30 23:31:11', '2022-11-30 23:31:11'),
(70, 92, 'assets/gallery/68jkCzedAOby9KvphFFy8YjmeAjOGq7dRsudWniP.png', NULL, '2022-11-30 23:35:33', '2022-11-30 23:35:33'),
(71, 93, 'assets/gallery/mng2j4FBaKgj219VG5xhs9ZubQd8VhPHgKVZohmW.png', NULL, '2022-11-30 23:41:22', '2022-11-30 23:41:22'),
(72, 95, 'assets/gallery/tpIKgsRyf1n5f19GXbHQTQBwHmEnRwkqdkgqBoPY.jpg', NULL, '2022-11-30 23:44:47', '2022-11-30 23:44:47'),
(73, 96, 'assets/gallery/gB2IkZrtGM8OBa8voxInpP2cnwsAOGVZ66fbWXmM.jpg', NULL, '2022-11-30 23:48:14', '2022-11-30 23:48:14'),
(74, 99, 'assets/gallery/Y6PHxpOb87ubcllW7mn2mnZUOWAyC2L24MOP17Tk.png', NULL, '2022-11-30 23:55:34', '2022-11-30 23:55:34'),
(75, 100, 'assets/gallery/I228GdLQREkmZ7RCQqEwP23qA3woUcJQVefRhZrr.png', NULL, '2022-12-01 19:10:43', '2022-12-01 19:10:43'),
(76, 101, 'assets/gallery/HSVJg90A8tySBLcuQu4LtMG8B3j9Nz3t18MwdaX9.jpg', NULL, '2022-12-01 19:23:48', '2022-12-01 19:24:22'),
(77, 101, 'assets/gallery/TtxDPCRXR06u84GeF7xNL541kcTEaUd3OqVAQ6kC.jpg', NULL, '2022-12-01 19:24:46', '2022-12-01 19:24:46'),
(78, 101, 'assets/gallery/yjcg69F7Zxe0OV6dTR3XZrdijU5mpUnzNuSlcsSP.jpg', NULL, '2022-12-01 19:25:05', '2022-12-01 19:25:05'),
(79, 102, 'assets/gallery/HQidctWWXJpe1MXD0jb7bKRgsO1yvZ3wF6NDYKkC.png', NULL, '2022-12-01 21:30:41', '2022-12-01 21:30:41'),
(80, 103, 'assets/gallery/tYTy5kLDWBZD9zajnRTzT5kqjITZcWVvKHfzBtIK.png', NULL, '2022-12-01 21:40:01', '2022-12-01 21:40:01'),
(81, 130, 'assets/gallery/zMOGwlDsKPQBTiU7bIfZSwQgauQhscb6DEMSHnoo.jpg', NULL, '2022-12-01 21:55:38', '2022-12-01 21:55:38'),
(82, 132, 'assets/gallery/027eRfCU07qkLvQkVhGuUd7StQkCNZo6FBmb8j61.png', NULL, '2022-12-01 23:01:54', '2022-12-01 23:01:54'),
(83, 137, 'assets/gallery/ZSeqDdH1fmIELrEqvFBhsfRjIbsMQidxxXQzsDv1.jpg', NULL, '2022-12-01 23:12:12', '2022-12-01 23:12:12'),
(84, 137, 'assets/gallery/Gb90FjytC5tvUa8VBvmDCE3MCQU3IXZHwlr8We07.jpg', NULL, '2022-12-01 23:12:23', '2022-12-01 23:12:23'),
(85, 137, 'assets/gallery/Wm6fnpRhitpJKOQxzVYlw8tcA5Q1BaehhGTjIrnr.jpg', '2022-12-01 23:13:00', '2022-12-01 23:12:45', '2022-12-01 23:13:00'),
(86, 202, 'assets/gallery/W18q87UuZJcwMITt8sskXLOafaorQYSnWYZnl2yY.jpg', '2022-12-01 23:24:15', '2022-12-01 23:23:57', '2022-12-01 23:24:15'),
(87, 202, 'assets/gallery/qrpOQrkTX3r566NsdsokVn2wdfX4WvDlLrdnUKdN.png', NULL, '2022-12-01 23:24:48', '2022-12-01 23:24:48'),
(88, 202, 'assets/gallery/jAUM8YoSEN2s3kT2GOG1A3JWcj1sgXEtPHZDgllB.jpg', NULL, '2022-12-01 23:26:34', '2022-12-01 23:26:34'),
(89, 203, 'assets/gallery/y1pIPYVFSHJYRRAqO5w1VvRfzmjLWzv6MLlFpgQr.jpg', NULL, '2022-12-01 23:33:14', '2022-12-01 23:33:14'),
(90, 203, 'assets/gallery/sBCFYMOX41TScQHerIZVa4mxchIlAUtAFFERmPDD.jpg', NULL, '2022-12-01 23:33:29', '2022-12-01 23:33:29'),
(91, 204, 'assets/gallery/bQrkphtOleCKmLN0hMtBYPfIzmQ1WKhKgHI1shfR.jpg', NULL, '2022-12-01 23:38:48', '2022-12-01 23:38:48'),
(92, 205, 'assets/gallery/CPa7TDIckQDNhl1BzDRoKMlp5UsZO3mnRTTg9qWu.png', NULL, '2022-12-02 00:01:28', '2022-12-02 00:01:28'),
(93, 206, 'assets/gallery/wqgItZUk0iHXDcYM5tonRk8pIepKEWhEq94bXq54.png', NULL, '2022-12-02 00:11:55', '2022-12-02 00:11:55'),
(94, 207, 'assets/gallery/9C6jxIF7t1rlmZGWA1in8oEZRQ6JbgTT2WX7rR3e.jpg', NULL, '2022-12-02 00:18:55', '2022-12-02 00:18:55'),
(95, 208, 'assets/gallery/k0VhX6eTqkdFbXBtesJuF6UahufOqIZTOf8UkaVL.jpg', NULL, '2022-12-02 00:25:31', '2022-12-02 00:25:31'),
(96, 3, 'assets/gallery/vRsweUdJ0JKAaVlM4bs9lugPGGQjOCkmAiqQbhRZ.png', NULL, '2022-12-02 00:28:14', '2022-12-02 00:28:14'),
(97, 209, 'assets/gallery/h6BSfdIkqfCfw65biZ2jckeG25RECpGKbjllWTXe.jpg', NULL, '2022-12-02 00:34:49', '2022-12-02 00:34:49'),
(98, 210, 'assets/gallery/Swp3kPAkc42PG0venOn19cGWjLFG9NimYkVxurVY.png', NULL, '2022-12-02 00:41:51', '2022-12-02 00:41:51'),
(99, 212, 'assets/gallery/pVMnKGURGRVChZpLJK190m8YGf7yDmneNXUrvIUJ.jpg', NULL, '2022-12-02 00:47:48', '2022-12-02 00:47:48'),
(100, 213, 'assets/gallery/FALABacIgaFXmiralmKMA1Uce7049mnxMhIUO6wx.jpg', NULL, '2022-12-02 00:50:54', '2022-12-02 00:50:54'),
(101, 214, 'assets/gallery/CzNtoLYRPPT9nej3P6oCmTlX5DZSsZaVneutCAP4.jpg', NULL, '2022-12-02 00:53:28', '2022-12-02 00:53:28'),
(102, 214, 'assets/gallery/qPISFdCQmCnTqYXVmXn1Rsd16CBsiJIEJpnlINBE.jpg', NULL, '2022-12-02 00:53:37', '2022-12-02 00:53:37'),
(103, 215, 'assets/gallery/vtjijOzmsh6gmBQONZ0T7eFsZpAe1cDmkyuSuDy5.png', NULL, '2022-12-02 00:56:06', '2022-12-02 00:56:06'),
(104, 1, 'assets/gallery/RTKQqHoaH4MvAgWkIp6ipQNH77HO7Yls3Jjs6eoe.jpg', NULL, '2022-12-27 00:37:37', '2022-12-27 00:37:37'),
(105, 1, 'assets/gallery/l0XzAflZ6piXkGzOm7TOkxHEwau0nKcH5DQBe0bf.jpg', NULL, '2022-12-27 00:37:52', '2022-12-27 00:37:52'),
(106, 216, 'assets/gallery/j27lhSzMXSVv3shfj1qMBDmBi0pimcNzG6vXDbuv.jpg', NULL, '2022-12-27 00:47:14', '2022-12-27 00:47:14'),
(107, 16, 'assets/gallery/pnTGuFdSTEvtTlK4ZWPWKvmOx1Irc4hb3EK2TZhM.jpg', NULL, '2022-12-29 23:49:13', '2022-12-29 23:49:13'),
(108, 16, 'assets/gallery/XGGT5klSgBATxs2lQ5X4Ralf3Zkws6tbrRkII3mu.jpg', NULL, '2022-12-29 23:49:26', '2022-12-29 23:49:26'),
(109, 16, 'assets/gallery/rJJufXy1zrofMQ9EeBwXpp0h07io08LcpEtVQs1X.jpg', NULL, '2022-12-29 23:49:36', '2022-12-29 23:49:36'),
(110, 18, 'assets/gallery/KRtOwNqszqDBiQ9E867e1cKDxQHdjB0uuPyFIJlp.jpg', NULL, '2022-12-29 23:58:03', '2022-12-29 23:58:03'),
(111, 18, 'assets/gallery/cAjx5qHTd85iGusOKvzmSXjLyC4LM8fvDkNznwf0.jpg', NULL, '2022-12-29 23:58:18', '2022-12-29 23:58:18'),
(112, 18, 'assets/gallery/JdSNXO60PFLApc8iZfqV4GKeCii5rlEoXw62eZWo.jpg', NULL, '2022-12-29 23:58:28', '2022-12-29 23:58:28'),
(113, 20, 'assets/gallery/7OBR74HkdVWdFNEaMi38o01cFQVmdK2iB8mizyj6.jpg', NULL, '2022-12-30 00:04:45', '2022-12-30 00:04:45'),
(114, 20, 'assets/gallery/BJ6Yh2zeQfWsEY8qE7cutVUIL7Ob6AVhkfrO2nGW.jpg', NULL, '2022-12-30 00:06:04', '2022-12-30 00:06:04'),
(115, 21, 'assets/gallery/x0WmZvwpilK8G5lXtsoQrtHXFKBErcPVj41oTCMr.jpg', NULL, '2022-12-30 00:13:27', '2022-12-30 00:13:27'),
(116, 21, 'assets/gallery/wfDGAqRByMOzTaWUaIRN4gjEqgNazIKse1fgSMrk.jpg', NULL, '2022-12-30 00:13:39', '2022-12-30 00:13:39'),
(117, 22, 'assets/gallery/V2F5mekVxBYEmlCFGcAmNXME3q0ScejhVr9RGmwD.jpg', NULL, '2022-12-30 00:16:04', '2022-12-30 00:16:04'),
(118, 22, 'assets/gallery/NAH27zbrbt1xbRm5o9lRuPEsJ0uPJHzAXgN83LN9.jpg', NULL, '2022-12-30 00:16:14', '2022-12-30 00:16:14'),
(119, 22, 'assets/gallery/IjuYrIxzxhMHn2UIiBltqzrd3imoiGfPWgurvCbz.jpg', NULL, '2022-12-30 00:16:41', '2022-12-30 00:16:41'),
(120, 23, 'assets/gallery/nDRvB06gIEcReL2a6RNMT4uk96KyxxBgM2e1XNOW.jpg', '2022-12-30 00:32:35', '2022-12-30 00:31:51', '2022-12-30 00:32:35'),
(121, 23, 'assets/gallery/CTHneUxWeCOUys8ZvNO6vxqJaDQjFAuWodaJnGe5.jpg', NULL, '2022-12-30 00:32:05', '2022-12-30 00:32:05'),
(122, 23, 'assets/gallery/TFuRKtT3wGjIRYjGFeOr0murMj6rWU3GmtHYPLxx.jpg', NULL, '2022-12-30 00:32:16', '2022-12-30 00:32:16'),
(123, 23, 'assets/gallery/4ASlPfjBcfEgKK2du5d24BcjsFngJED7aG492eSf.jpg', NULL, '2022-12-30 00:32:24', '2022-12-30 00:32:24'),
(124, 24, 'assets/gallery/GzIvMmjaQxjBMbFl3inQrNPoFwYREp1YnswiGLVw.jpg', NULL, '2023-01-04 04:40:42', '2023-01-04 04:40:42'),
(125, 24, 'assets/gallery/e5N0fjSXkDc7yAzb8OELSLhWtU0RxU6k564r5lco.jpg', NULL, '2023-01-04 04:41:01', '2023-01-04 04:41:01'),
(126, 24, 'assets/gallery/ksMmwXB8lIprhikWj7XoQ7fdvJZ6hMtM5e8a3L6l.jpg', NULL, '2023-01-04 04:41:12', '2023-01-04 04:41:12'),
(127, 25, 'assets/gallery/Gt7SP8Gy8tpwAQuNePJh8AIsuIEABM5Jwqpd41iG.jpg', NULL, '2023-01-04 04:47:35', '2023-01-04 04:47:35'),
(128, 26, 'assets/gallery/HXRuX8egx5mYCb7F5AA1dSdSb6Iw92o03LuwnFiF.jpg', NULL, '2023-01-04 04:57:49', '2023-01-04 04:57:49'),
(129, 26, 'assets/gallery/YXSHDeIhZYsrzeCwvD9eVTw7m1MdUO5btdRL40wr.jpg', NULL, '2023-01-04 04:58:26', '2023-01-04 04:58:26'),
(130, 26, 'assets/gallery/VJNXGfmp8FnOuyj5z1TMkL86ysX8fEdTyog4w0UJ.jpg', NULL, '2023-01-04 04:58:38', '2023-01-04 04:58:38'),
(131, 28, 'assets/gallery/i8dVu9gxCbEAzWUBAKWxtAPsF08qQdU72x357MwD.jpg', NULL, '2023-01-04 05:08:21', '2023-01-04 05:08:21'),
(132, 28, 'assets/gallery/IYailRq8T9Tme7R818aj9vKSWgDcCXlmjCoCgqcF.jpg', NULL, '2023-01-04 05:08:35', '2023-01-04 05:08:35'),
(133, 28, 'assets/gallery/MTl7TwvN5sQBUruFV9TAS9NPfJ2spSCZjkw85ImR.jpg', NULL, '2023-01-04 05:08:45', '2023-01-04 05:08:45'),
(134, 29, 'assets/gallery/PZAMe7BDoHjxhtFDXbNhmgMREby8qvT2harxZei6.png', NULL, '2023-01-04 05:14:11', '2023-01-04 05:14:11'),
(135, 36, 'assets/gallery/GMP97ulTM8EpSqGQI7Bmf8yfLg6p9MWgb9AkysOZ.jpg', NULL, '2023-01-04 05:19:53', '2023-01-04 05:19:53'),
(136, 36, 'assets/gallery/bVjcIc8gTlN80rCWTQmyzUeFvdt3H8acolwR2aFY.jpg', NULL, '2023-01-04 05:20:06', '2023-01-04 05:20:06'),
(137, 36, 'assets/gallery/j8wJ29iJWmZFyhpw1XKZnhTBrkvxCPswVtK19LuE.jpg', NULL, '2023-01-04 05:20:19', '2023-01-04 05:20:19'),
(138, 36, 'assets/gallery/CAoGEXJrKocQg3RVrdHLy2qbmPITmiB4ittkj6HO.jpg', NULL, '2023-01-04 05:20:29', '2023-01-04 05:20:29'),
(139, 40, 'assets/gallery/zFMDna5P0Z59lRh91q7GNsu1QO4BxfPl1ZFdugDt.png', NULL, '2023-01-04 05:24:38', '2023-01-04 05:24:38'),
(140, 41, 'assets/gallery/XrqP14SXE70lQ8Eo9lJgbKwBeKhtNDQFths6HWE8.jpg', NULL, '2023-01-04 05:37:55', '2023-01-04 05:37:55'),
(141, 41, 'assets/gallery/XUqXIe0EAAdzn5EzqyFt1EUCCPVq4OMk9W0Lry59.jpg', NULL, '2023-01-04 05:39:48', '2023-01-04 05:39:48'),
(142, 41, 'assets/gallery/zvy8JgaxyhnIcvFmIqtLBkmkXzuq47cqkzDpwuMz.jpg', NULL, '2023-01-04 05:39:57', '2023-01-04 05:39:57'),
(143, 42, 'assets/gallery/VjU8jnmkSoqejU5hOnXQ9hprYFGJDukwaKMJn9XI.jpg', NULL, '2023-01-04 05:45:20', '2023-01-04 05:45:20'),
(144, 42, 'assets/gallery/UVuOsHTMyKjJ32NoUUh21ZQq9fmeQkTY1f04nRd6.jpg', NULL, '2023-01-04 05:45:28', '2023-01-04 05:45:28'),
(145, 42, 'assets/gallery/WKnJeFTGqyoRJdNmIqWq9ijEgb8Ld7S2b3sedI7X.jpg', NULL, '2023-01-04 05:45:34', '2023-01-04 05:45:34'),
(146, 44, 'assets/gallery/xRFs7N4pgtYq7VPjYbN1fzTAE9lYoMczamOOX6vT.jpg', NULL, '2023-01-04 19:13:46', '2023-01-04 19:13:46'),
(147, 44, 'assets/gallery/U578cDB9kie2XxdhanjCZ4axLcorBOV105iYAFAo.jpg', NULL, '2023-01-04 19:14:13', '2023-01-04 19:14:13'),
(148, 44, 'assets/gallery/pPYJImxWJUyO2Uh0MCsozBvp5DW0gmijLhe0P8qa.jpg', NULL, '2023-01-04 19:14:25', '2023-01-04 19:14:25'),
(149, 44, 'assets/gallery/3NMTjbpW8COlsK9bDSrARJ8sXj7HNwNhff35JrBG.jpg', NULL, '2023-01-04 19:14:31', '2023-01-04 19:14:31'),
(150, 45, 'assets/gallery/t5S976tiHEFcGlkFbqTLhas7msFgwVrTbQUloHIz.jpg', NULL, '2023-01-04 19:19:00', '2023-01-04 19:19:00'),
(151, 45, 'assets/gallery/d1QpmzC1i4scOhhTqS6A4dEUqQrynNz03UeIXS8a.jpg', NULL, '2023-01-04 19:19:10', '2023-01-04 19:19:10'),
(152, 49, 'assets/gallery/WWNWD73pgMOv0xirHFWimEB0a2LPOdJn0moczo6N.jpg', NULL, '2023-01-04 20:47:08', '2023-01-04 20:47:08'),
(153, 49, 'assets/gallery/YPQw8mOkRCIT1d8bzHnPB5UFsHDnsjmN2ibSTL6U.jpg', NULL, '2023-01-04 20:47:18', '2023-01-04 20:47:18'),
(154, 49, 'assets/gallery/GjNsgsLwCHCk28IqMeAnfFFSfFjk2t6vtEpnSOwj.jpg', NULL, '2023-01-04 20:47:40', '2023-01-04 20:47:40'),
(155, 339, 'assets/gallery/7sDL2v668yaXQydgTKJFFr5X3LuuNWLxDjH1ndva.jpg', NULL, '2023-01-17 17:09:17', '2023-01-17 17:09:17'),
(156, 53, 'assets/gallery/LXCt2QtqkiKFpnhX2ZUIsbliqFmsIzjfF6FlLxc2.jpg', NULL, '2023-01-27 00:18:36', '2023-01-27 00:18:36'),
(157, 53, 'assets/gallery/s9la9QxiQVg0ea8Cq1eAFiDrwuhmxDW2iT840c80.jpg', NULL, '2023-01-27 00:18:47', '2023-01-27 00:18:47'),
(158, 53, 'assets/gallery/NBgVkTG5T0Knzsnm3LgnaPuTElCH3n1NQgHUekr5.jpg', NULL, '2023-01-27 00:18:54', '2023-01-27 00:18:54'),
(159, 54, 'assets/gallery/v5l1BYMa89kdiLwFaFNaKcJMcBoJznqkcADtas2v.jpg', NULL, '2023-01-27 00:24:14', '2023-01-27 00:24:14'),
(160, 54, 'assets/gallery/SLLcI1CJPSBAcmzTnUXMwg4QEyRqOereprzWRsxV.jpg', NULL, '2023-01-27 00:24:22', '2023-01-27 00:24:22'),
(161, 57, 'assets/gallery/coLLRw1Dq3KPzQZQhlDL7G1IFeFc836zZHNATPvT.jpg', NULL, '2023-01-27 00:28:19', '2023-01-27 00:28:19'),
(162, 57, 'assets/gallery/6JUw7PEqFZ9PLRqExDF6POBpCzrGv8bUX7V378bs.jpg', NULL, '2023-01-27 00:28:29', '2023-01-27 00:28:29'),
(163, 58, 'assets/gallery/0Tnl38XxOc5aRP9UgUJxxPALadc5QurQMixvSLER.jpg', NULL, '2023-01-27 00:33:46', '2023-01-27 00:33:46'),
(164, 58, 'assets/gallery/LkhfUCVprZKIN0yWsBTDJFnbaRVKTvWTINprb3DX.jpg', NULL, '2023-01-27 00:33:53', '2023-01-27 00:33:53'),
(165, 58, 'assets/gallery/Bldm98D2yxeXX1cFuSZy0jXVdSfZFjnL2dLOyAfi.jpg', NULL, '2023-01-27 00:33:59', '2023-01-27 00:33:59'),
(166, 60, 'assets/gallery/FbZkIr5rKFeNqcG03DZL27SFhPfrSVJCuoV4layx.png', NULL, '2023-01-27 00:37:55', '2023-01-27 00:37:55'),
(167, 61, 'assets/gallery/zNV5wRZevjXhAq42ge2BeN6pgfTZtjMjGhZg0MH4.png', NULL, '2023-01-27 00:41:15', '2023-01-27 00:41:15'),
(168, 67, 'assets/gallery/vqSXZ0nXxF07GR9SaDAjeQjfMC24a6k8Zxsk8MPp.png', NULL, '2023-01-27 00:48:20', '2023-01-27 00:48:20'),
(169, 67, 'assets/gallery/G3qlJyJEBgqzuvcW6xLh5qu4i4EqoqMscf2fVO11.png', NULL, '2023-01-27 00:48:27', '2023-01-27 00:48:27'),
(170, 67, 'assets/gallery/v6cnF5hyQb2GKk4xKALg9y93qEZhEhUY41BadC31.jpg', NULL, '2023-01-27 00:48:34', '2023-01-27 00:48:34'),
(171, 68, 'assets/gallery/DvAYtjAh3E796IT48gSppQw3R3wPTurSmetzmIzQ.png', NULL, '2023-01-27 00:52:14', '2023-01-27 00:52:14'),
(172, 340, 'assets/gallery/6TQhX9pozIFT7YE5Z2sH0v87JeHGQSQQD7BH4RqK.png', NULL, '2023-02-09 04:24:55', '2023-02-09 04:24:55'),
(173, 341, 'assets/gallery/PLudMYOVF1RtfbqWwzRSISsdGQIcjVIKkhfdozGw.png', NULL, '2023-02-09 16:14:43', '2023-02-09 16:14:43'),
(174, 342, 'assets/gallery/ZOfKH6oMh4nyylLWhIVsCcrZ4GLqMS9F5AfwfFgv.jpg', '2023-02-19 23:22:30', '2023-02-19 02:35:02', '2023-02-19 23:22:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faskes_categories_kode_fktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmap_embed` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `faskes_categories_kode_fktp`, `gmap_embed`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '0233B006', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3943.9265542440958!2d115.25638281478427!3d-8.698524993750542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd241b83df0508f%3A0xe323ca4a7d74f75e!2sKlinik%20Remedium%20Care!5e0!3m2!1sid!2sid!4v1668068561942!5m2!1sid!2sid', NULL, '2022-11-10 08:27:12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_01_125133_create_competition_categories_table', 1),
(6, '2022_06_01_132142_create_galleries_table', 1),
(7, '2022_06_02_035824_create_transactions_table', 1),
(8, '2022_06_02_040637_create_transaction_details_table', 1),
(9, '2022_06_02_044822_add_roles_field_to_users_table', 1),
(10, '2022_06_03_012432_add_username_field_to_users_table', 1),
(11, '2022_06_09_082939_add_date_of_birth_field_to_users_table', 1),
(12, '2022_06_09_083343_add_institute_field_to_users_table', 1),
(13, '2022_06_09_083410_add_province_field_to_users_table', 1),
(14, '2022_06_09_083433_add_nim_nis_field_to_users_table', 1),
(15, '2022_10_29_233403_create_ratings_table', 2),
(16, '2022_10_31_020959_create_posts_table', 3),
(17, '2022_11_10_073211_create_location_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faskes_categories_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_cost` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `faskes_categories_id`, `users_id`, `additional_cost`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:14:56', '2022-06-20 06:30:57', '2022-11-09 22:14:56'),
(2, 1, 2, 0, 20000000, 'IN_CART', '2022-11-09 22:14:58', '2022-06-20 06:38:50', '2022-11-09 22:14:58'),
(3, 1, 2, 0, 20000000, 'PENDING', '2022-11-09 22:14:59', '2022-06-20 06:42:17', '2022-11-09 22:14:59'),
(4, 1, 2, 0, 20000000, 'PENDING', '2022-11-09 22:15:00', '2022-06-20 06:44:57', '2022-11-09 22:15:00'),
(5, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:05', '2022-06-20 06:58:43', '2022-11-09 22:15:05'),
(6, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:07', '2022-06-26 09:05:49', '2022-11-09 22:15:07'),
(7, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:08', '2022-07-23 21:36:22', '2022-11-09 22:15:08'),
(8, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:09', '2022-07-23 21:53:21', '2022-11-09 22:15:09'),
(9, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:11', '2022-07-23 22:26:36', '2022-11-09 22:15:11'),
(10, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:12', '2022-07-23 22:28:15', '2022-11-09 22:15:12'),
(11, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:13', '2022-07-23 22:31:08', '2022-11-09 22:15:13'),
(12, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:15', '2022-07-23 23:03:25', '2022-11-09 22:15:15'),
(13, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:16', '2022-07-23 23:14:38', '2022-11-09 22:15:16'),
(14, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:17', '2022-07-23 23:22:03', '2022-11-09 22:15:17'),
(15, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:19', '2022-07-24 00:41:27', '2022-11-09 22:15:19'),
(16, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:20', '2022-07-24 00:45:51', '2022-11-09 22:15:20'),
(17, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:21', '2022-07-24 00:55:44', '2022-11-09 22:15:21'),
(18, 3, 1, 0, 1000000, 'IN_CART', '2022-11-09 22:15:22', '2022-07-24 01:03:41', '2022-11-09 22:15:22'),
(19, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:24', '2022-07-24 01:13:36', '2022-11-09 22:15:24'),
(20, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:25', '2022-07-24 02:02:23', '2022-11-09 22:15:25'),
(21, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:26', '2022-07-25 22:17:11', '2022-11-09 22:15:26'),
(22, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:27', '2022-07-26 00:20:25', '2022-11-09 22:15:27'),
(23, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:28', '2022-07-26 00:58:26', '2022-11-09 22:15:28'),
(24, 2, 1, 0, 3000000, 'PENDING', '2022-11-09 22:15:30', '2022-07-26 05:30:32', '2022-11-09 22:15:30'),
(25, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:31', '2022-07-26 05:48:14', '2022-11-09 22:15:31'),
(26, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:32', '2022-07-26 05:49:08', '2022-11-09 22:15:32'),
(27, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:33', '2022-07-26 05:49:39', '2022-11-09 22:15:33'),
(28, 2, 1, 0, 3000000, 'PENDING', '2022-11-09 22:15:34', '2022-07-26 05:49:57', '2022-11-09 22:15:34'),
(29, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:35', '2022-07-26 06:31:16', '2022-11-09 22:15:35'),
(30, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:36', '2022-07-26 06:31:21', '2022-11-09 22:15:36'),
(31, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:38', '2022-07-26 06:31:26', '2022-11-09 22:15:38'),
(32, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:39', '2022-07-26 06:31:29', '2022-11-09 22:15:39'),
(33, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:40', '2022-07-26 06:31:32', '2022-11-09 22:15:40'),
(34, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:41', '2022-07-26 06:31:34', '2022-11-09 22:15:41'),
(35, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:42', '2022-07-26 06:31:36', '2022-11-09 22:15:42'),
(36, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:43', '2022-07-26 06:31:40', '2022-11-09 22:15:43'),
(37, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:44', '2022-07-26 06:32:23', '2022-11-09 22:15:44'),
(38, 4, 1, 0, 2500000, 'IN_CART', '2022-11-09 22:15:45', '2022-07-26 06:32:25', '2022-11-09 22:15:45'),
(39, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:52', '2022-07-26 06:32:27', '2022-11-09 22:15:52'),
(40, 4, 1, 0, 2500000, 'PENDING', '2022-11-09 22:15:51', '2022-07-26 06:34:47', '2022-11-09 22:15:51'),
(41, 2, 1, 0, 3000000, 'IN_CART', '2022-11-09 22:15:53', '2022-07-26 06:35:11', '2022-11-09 22:15:53'),
(42, 2, 1, 0, 3000000, 'PENDING', '2022-11-09 22:15:54', '2022-07-26 06:39:15', '2022-11-09 22:15:54'),
(43, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:49', '2022-07-26 06:40:00', '2022-11-09 22:15:49'),
(44, 3, 1, 0, 1000000, 'IN_CART', '2022-11-09 22:15:55', '2022-07-26 06:41:58', '2022-11-09 22:15:55'),
(45, 2, 1, 0, 3000000, 'PENDING', '2022-11-09 22:15:56', '2022-07-26 06:59:59', '2022-11-09 22:15:56'),
(46, 1, 1, 0, 20000000, 'PENDING', '2022-11-09 22:15:57', '2022-07-26 07:02:02', '2022-11-09 22:15:57'),
(47, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:57', '2022-07-26 07:05:23', '2022-11-09 22:15:57'),
(48, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:58', '2022-07-26 07:05:52', '2022-11-09 22:15:58'),
(49, 3, 1, 0, 1000000, 'PENDING', '2022-11-09 22:15:59', '2022-07-26 07:06:47', '2022-11-09 22:15:59'),
(50, 2, 1, 0, 3000000, 'PENDING', '2022-11-09 22:16:00', '2022-07-26 07:15:20', '2022-11-09 22:16:00'),
(51, 2, 1, 0, 3000000, 'IN_CART', '2022-11-09 22:16:01', '2022-07-26 07:17:14', '2022-11-09 22:16:01'),
(52, 3, 1, 0, 1000000, 'IN_CART', '2022-11-09 22:16:02', '2022-07-26 07:41:51', '2022-11-09 22:16:02'),
(53, 3, 1, 0, 1000000, 'IN_CART', '2022-11-09 22:16:03', '2022-07-26 20:43:13', '2022-11-09 22:16:03'),
(54, 1, 1, 0, 20000000, 'IN_CART', '2022-11-09 22:15:47', '2022-08-24 21:31:29', '2022-11-09 22:15:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `institute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim_nis` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `date_of_birth`, `institute`, `province`, `nim_nis`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-06-20 06:30:58', '2022-06-20 06:30:58'),
(2, 2, 'surya12', '2022-05-31', 'China', 'Bali', 2015323004, NULL, '2022-06-20 06:38:50', '2022-06-20 06:38:50'),
(3, 2, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-06-20 06:40:31', '2022-06-20 06:40:31'),
(4, 3, 'surya12', '2022-05-31', 'China', 'Bali', 2015323004, NULL, '2022-06-20 06:42:17', '2022-06-20 06:42:17'),
(5, 4, 'surya12', '2022-05-31', 'China', 'Bali', 2015323004, NULL, '2022-06-20 06:44:57', '2022-06-20 06:44:57'),
(6, 5, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-06-20 06:58:43', '2022-06-20 06:58:43'),
(7, 6, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-06-26 09:05:49', '2022-06-26 09:05:49'),
(8, 7, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 21:36:22', '2022-07-23 21:36:22'),
(9, 8, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 21:53:21', '2022-07-23 21:53:21'),
(10, 9, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 22:26:36', '2022-07-23 22:26:36'),
(11, 10, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 22:28:15', '2022-07-23 22:28:15'),
(12, 11, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 22:31:08', '2022-07-23 22:31:08'),
(13, 12, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 23:03:25', '2022-07-23 23:03:25'),
(14, 13, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 23:14:38', '2022-07-23 23:14:38'),
(15, 14, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-23 23:22:03', '2022-07-23 23:22:03'),
(16, 15, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 00:41:27', '2022-07-24 00:41:27'),
(17, 16, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 00:45:51', '2022-07-24 00:45:51'),
(18, 17, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 00:55:44', '2022-07-24 00:55:44'),
(19, 18, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 01:03:41', '2022-07-24 01:03:41'),
(20, 19, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 01:13:36', '2022-07-24 01:13:36'),
(21, 20, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-24 02:02:23', '2022-07-24 02:02:23'),
(22, 21, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-25 22:17:11', '2022-07-25 22:17:11'),
(23, 22, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 00:20:25', '2022-07-26 00:20:25'),
(24, 23, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 00:58:26', '2022-07-26 00:58:26'),
(25, 24, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 05:30:32', '2022-07-26 05:30:32'),
(26, 25, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 05:48:14', '2022-07-26 05:48:14'),
(27, 26, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 05:49:08', '2022-07-26 05:49:08'),
(28, 27, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 05:49:39', '2022-07-26 05:49:39'),
(29, 28, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 05:49:57', '2022-07-26 05:49:57'),
(30, 29, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:16', '2022-07-26 06:31:16'),
(31, 30, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:21', '2022-07-26 06:31:21'),
(32, 31, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:26', '2022-07-26 06:31:26'),
(33, 32, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:29', '2022-07-26 06:31:29'),
(34, 33, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:32', '2022-07-26 06:31:32'),
(35, 34, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:34', '2022-07-26 06:31:34'),
(36, 35, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:36', '2022-07-26 06:31:36'),
(37, 36, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:31:40', '2022-07-26 06:31:40'),
(38, 37, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:32:23', '2022-07-26 06:32:23'),
(39, 38, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:32:25', '2022-07-26 06:32:25'),
(40, 39, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:32:27', '2022-07-26 06:32:27'),
(41, 40, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:34:47', '2022-07-26 06:34:47'),
(42, 41, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:35:11', '2022-07-26 06:35:11'),
(43, 42, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:39:15', '2022-07-26 06:39:15'),
(44, 43, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:40:00', '2022-07-26 06:40:00'),
(45, 44, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:41:58', '2022-07-26 06:41:58'),
(46, 45, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 06:59:59', '2022-07-26 06:59:59'),
(47, 46, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:02:02', '2022-07-26 07:02:02'),
(48, 47, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:05:23', '2022-07-26 07:05:23'),
(49, 48, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:05:52', '2022-07-26 07:05:52'),
(50, 49, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:06:47', '2022-07-26 07:06:47'),
(51, 50, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:15:20', '2022-07-26 07:15:20'),
(52, 51, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:17:14', '2022-07-26 07:17:14'),
(53, 52, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 07:41:51', '2022-07-26 07:41:51'),
(54, 53, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-07-26 20:43:13', '2022-07-26 20:43:13'),
(55, 54, 'nicholas17', '2000-11-04', 'Indonesia', 'Jawa Barat', 2015323068, NULL, '2022-08-24 21:31:29', '2022-08-24 21:31:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Nicholas Christhofer Sinaga', 'nicholassinaga@hotmail.com', '2022-06-20 05:43:23', '$2y$10$bfNSBmSgndddYl42z3CR3.TXHTDhaYFejhM8DklzahiXFYnXdk3wW', NULL, '2022-06-20 05:42:32', '2022-06-20 05:43:23', 'ADMIN', 'nicholas17'),
(2, 'Surya', 'surya@anakmoonton.com', '2022-06-20 06:38:37', '$2y$10$IqqU0b.TkovMprhfHzyFrO57rK5ddTnf.as0mqGBV3wZzJNcxUvwK', NULL, '2022-06-20 06:38:04', '2022-06-20 06:38:37', 'USER', 'surya12'),
(3, 'andkika', 'nicholas17sinaga17@gmail.com', NULL, '$2y$10$ZXpuPjCNZSqxAEg3uaLISeiggiY1jLA49A6r4YeqY.9R81DG/6J.K', NULL, '2023-02-09 03:27:47', '2023-02-09 03:27:47', 'ADMIN', 'andika2201');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `faskes_categories`
--
ALTER TABLE `faskes_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `faskes_categories`
--
ALTER TABLE `faskes_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT untuk tabel `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
