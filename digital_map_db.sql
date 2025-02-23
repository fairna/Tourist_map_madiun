/*
Navicat MySQL Data Transfer

Source Server         : Zoey
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : digital_map

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2025-02-12 19:52:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cultural_heritages
-- ----------------------------
DROP TABLE IF EXISTS `cultural_heritages`;
CREATE TABLE `cultural_heritages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_destinasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cultural_heritages
-- ----------------------------
INSERT INTO `cultural_heritages` VALUES ('1', 'Balaikota Madiun', '1', 'Jl. Pahlawan No. 37', '-7.624444', '111.520556', 'Gedung Balaikota Madiun adalah pusat pemerintahan Kota Madiun. Bangunan ini memiliki arsitektur kolonial dan dibangun pada masa penjajahan Belanda. Gedung ini tetap difungsikan sebagai kantor wali kota hingga sekarang', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('2', 'Masjid Kuno Kuncen', '2', 'Jl. Kuncen', '-7.656389', '111.513889', 'Masjid Kuno Kuncen, juga dikenal sebagai Masjid Nur Hidayatulloh, adalah masjid tertua di Kelurahan Kuncen. Didirikan pada tahun 1568 oleh Pangeran Timur, masjid ini memiliki nilai sejarah yang tinggi dengan arsitektur khas Demak. Di sekitar masjid terdapat makam para bupati Madiun dan artefak-artefak bersejarah', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('3', 'Kompleks Bangunan Santo Bernadus', '1', 'Jl. Ahmad Yani No. 7', '-7.623611', '111.518611', 'Kompleks ini terdiri dari sekolah TK, SD, dan SMP Katolik Santo Bernadus yang sudah ada sejak era kolonial. Bangunan ini juga termasuk biara dan telah ditetapkan sebagai cagar budaya oleh Pemerintah Kota Madiun', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('4', 'Komplek Bakrowil Kota Madiun', '1', 'Jl. Pahlawan No. 31', '-7.622222', '111.520833', 'Gedung Bakorwil I Madiun adalah salah satu bangunan peninggalan kolonial Belanda yang ditetapkan sebagai cagar budaya. Gedung ini awalnya merupakan rumah dinas Residen Madiun pada masa kolonial dan sekarang digunakan sebagai kantor pemerintahan', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('5', 'Rumah Kapitan Cina', '1', 'Jl. Kolonel Marhadi', '-7.630000', '111.515833', 'Rumah ini dulunya milik Kapitan Njoo Swie Lian, seorang opsir keturunan Cina. Bangunan ini memiliki perpaduan arsitektur Cina dan Belanda dan telah ditetapkan sebagai cagar budaya oleh Pemerintah Kota Madiun', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('6', 'Komplek Pabrik Gula Rejo Agung', '1', 'Jl. Yos Sudarso No. 23', '-7.607222', '111.531389', 'Pabrik gula ini didirikan pada tahun 1894 oleh NV Handel MT Kian Gwan, perusahaan swasta milik warga suku Tionghoa. Pabrik ini masih beroperasi hingga sekarang dan menghasilkan produk turunan dari sisa tebu', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('7', 'Stasiun Kota Madiun', '1', 'Jl. Kompol Sunaryo No. 6A', '-7.618889', '111.524444', 'Stasiun Madiun adalah stasiun kereta api kelas besar tipe A yang terletak di Kota Madiun. Stasiun ini merupakan stasiun utama di Kota Madiun dan berada dalam pengelolaan Kereta Api Indonesia (KAI) Daerah Operasi VII Madiun', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('8', 'Masjid Kuno Taman', '2', 'Jl. Asahan No. 46', '-7.639444', '111.523333', 'Masjid Besar Kuno Taman, juga dikenal sebagai Masjid Donopuro, dibangun pada tahun 1754 oleh Kiai Ageng Misbach. Masjid ini memiliki nuansa religi yang kental dan menjadi salah satu masjid tertua di Madiun. Di kompleks masjid ini juga terdapat makam para pemimpin Kota Madiun', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('9', 'Gereja Santo Cornelius', '2', 'Jl. Ahmad Yani No. 3', '-7.623889', '111.520000', 'Gereja Santo Cornelius adalah gereja Katolik yang didirikan pada tahun 1899. Gereja ini memiliki arsitektur yang khas dan merupakan salah satu gereja tertua di Madiun. Gereja ini berada di bawah naungan Keuskupan Surabaya dan menjadi pusat kegiatan keagamaan umat Katolik di Madiun', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('10', 'GPIB Gamaliel', '2', 'Jl. Jawa No. 10', '-7.623056', '111.522500', 'GPIB Gamaliel adalah gereja Protestan yang didirikan pada tahun 1908 oleh T. Pilon Spark. Gereja ini memiliki arsitektur khas Belanda dan telah ditetapkan sebagai cagar budaya oleh Pemerintah Kota Madiun. Gereja ini melayani umat Protestan di Madiun dan sekitarnya', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('11', 'Klenteng Hwi Ing Kong', '2', 'Jl. HOS Cokroaminoto No. 69', '-7.633333', '111.520000', 'Klenteng Hwi Ing Kong adalah tempat ibadah Tri Dharma yang didirikan pada tahun 1887. Klenteng ini memiliki arsitektur khas Tiongkok dan menjadi salah satu destinasi wisata religi di Madiun. Klenteng ini aktif digunakan sebagai tempat ibadah bagi penganut Tao, Buddha, dan Konghucu', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('12', 'Monumen Perjuangan PETA Madiun', '3', 'Jl. Diponegoro, Oro-oro Ombo, Kec. Kartoharjo, Kota Madiun', '-7.623611', '111.529167', 'Monumen PETA terletak di Jl. Diponegoro, Oro-oro Ombo, Kecamatan Kartoharjo, Kota Madiun. Monumen ini didirikan untuk menghormati perjuangan para pahlawan. Di bagian atas monumen, terdapat patung Burung Garuda sebagai simbol negara. Terdapat juga tugu-tugu kecil yang didedikasikan untuk mengenang jasa para pahlawan yang gugur dalam membela bangsa Indonesia. Monumen PETA sering digunakan sebagai tempat peringatan hari-hari besar nasional dan sebagai lokasi edukasi bagi pelajar', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('13', 'Monumen Kolonel Marhadi Kota Madiun', '3', 'Jl. Kolonel Marhadi, Pangongangan, Kec. Manguharjo, Kota Madiun', '-7.629722', '111.516667', 'Monumen ini didirikan untuk menghormati Kolonel Marhadi, prajurit TNI yang gugur dalam pertempuran melawan PKI di Desa Kresek. Patungnya terletak di Alun-Alun Kota Madiun dan menjadi salah satu landmark kota', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('14', 'Monumen Tentara Genie Pelajar (TGP)', '3', 'Jl. Kemuning Gg. V No.14, Oro-oro Ombo, Kec. Kartoharjo, Kota Madiun', '-7.621944', '111.527778', 'TGP yang menjadi tempat menarik untuk bersantai dan beraktivitas di luar ruangan. Taman ini dilengkapi dengan fasilitas yang nyaman, seperti tempat duduk dan ruang terbuka hijau yang asri. Monumen TGP ini juga menjadi penghormatan terhadap perjuangan dan semangat gerilya kesatuan TGP Kota Madiun yang lahir setelah peristiwa PKI 1948, yang kemudian disusul Agresi Militer Belanda II. Perjuangan TGP dalam mempertahankan kemerdekaan RI diharapkan menjadi pemicu semangat generasi muda dalam melanjutkan pembangunan bangsa.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('15', 'Monumen Mastrip Kota Madiun', '3', 'Jl. Mastrip, Klegen, Kec. Taman, Kota Madiun', '-7.632500', '111.530556', 'Monumen ini berada di Taman Mastrip, Jalan Mastrip, Klegen, Kecamatan Taman. Monumen ini mengenang jasa para anggota Tentara Republik Indonesia Pelajar (TRIP) yang gugur dalam perjuangan kemerdekaan', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('16', 'Madiun City 0 Km', '3', 'Jl. Pahlawan No.74-72, Kartoharjo', '-7.630278', '111.519167', 'Tugu Nol Kilometer ini terletak di perempatan Tugu, Kota Madiun. Tugu ini telah direnovasi dan menjadi ikon baru kota', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('17', 'Alun-Alun Kota Madiun', '3', 'Jl. Kolonel Marhadi No.12, Nambangan Lor, Kec. Manguharjo, Kota Madiun', '-7.629167', '111.516667', 'Alun-Alun Kota Madiun telah menjadi titik kumpul warga kota sejak tahun 1918-1919. Lokasinya strategis di pusat Kota Madiun. Di sekelilingnya terdapat bangunan-bangunan seperti Masjid Agung Madiun di sebelah barat, Presiden Plaza di sebelah timur, pertokoan di sebelah selatan, dan kantor pemerintahan di sebelah utara.\r\nAlun-alun ini menawarkan suasana asri dan sejuk berkat banyaknya pepohonan. Pengunjung dapat bersantai, berolahraga, atau menikmati kuliner di sekitar alun-alun. Alun-alun ini dilengkapi dengan berbagai fasilitas, termasuk pendopo yang luas untuk bersantai, dan Taman Pintar yang menyediakan perpustakaan mini dan ruang baca sebagai sarana edukasi.\r\nPada siang hari, pengunjung dapat berolahraga di area yang rindang. Pada sore hari, Alun-Alun Madiun berubah menjadi pasar dengan berbagai pedagang yang menjual pakaian, aksesoris, makanan, dan mainan. Di malam hari, gemerlap lampu dan lampion menciptakan suasana yang semarak. Pengunjung dapat menikmati berbagai hidangan lokal seperti nasi pecel, sate ayam, bakso, dan martabak manis\r\n', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('18', 'Patung Pendekar Kota Madiun', '3', 'Jl. Diponegoro No.33, Oro-oro Ombo, Kec. Kartoharjo, Kota Madiun', '-7.623889', '111.533056', 'Patung ini terletak di tugu simpang lima (proliman) Jalan Diponegoro. Patung ini melambangkan program kerja Panca Karya Pemkot Madiun dan menjadi salah satu ikon kota', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('19', 'Taman Obor', '3', 'Jl. S. Parman No.26, Oro-oro Ombo, Kartoharjo', '-7.620556', '111.533333', 'Taman ini terletak di Kelurahan Oro-Oro Ombo dan menjadi tempat yang tepat untuk bersantai sambil belajar. Taman ini juga memiliki papan nama sejumlah pahlawan nasional', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('20', 'Patung Pecel Kota Madiun', '3', 'Jl. Pahlawan, Madiun Lor, Kec. Manguharjo, Kota Madiun', '-7.623333', '111.520278', 'Patung ini terletak di Jalan Pahlawan dan menjadi simbol kuliner khas Madiun, yaitu nasi pecel', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('21', 'Patung Banteng Ketaton Kota Madiun', '3', 'Jl. Mastrip, Klegen, Kec. Kartoharjo, Kota Madiun', '-7.631944', '111.529444', 'Monumen Banteng Ketaton terletak di Jalan Mastrip, Kelurahan Klegen, Kecamatan Kartoharjo. Banteng Ketaton dapat diartikan sebagai banteng yang luka terkena senjata, yang merupakan simbolisasi sikap melawan atau mempertahankan diri dengan gigih. Monumen ini dibangun untuk mengenang semangat warga Madiun dalam melawan agresi militer Belanda I. Monumen ini didirikan oleh Rakyat Murba dan dipersembahkan kepada “Banteng Kurdho” dan “Pahlawan Bambu Runcing” di Madiun, 17 April 1947. Awalnya, selain figur banteng, ada juga sosok rakyat pejuang dengan ikat kepala yang sedang mengangkat bambu runcing, tetapi sejak dipindahkan dari lokasi awal di Taman Makam Pahlawan ke kawasan Stadion Wilis, sosok pejuang tersebut tidak tampak lagi.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('22', 'Pusat Oleh-oleh Kota Madiun', '4', 'Jl. Panglima Sudirman', '-7.630278', '111.519167', 'Tempat yang menyediakan berbagai macam oleh-oleh khas Madiun, seperti brem, sambal pecel, dan camilan tradisional lainnya.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('23', 'Ayam Goreng Pemuda', '4', 'Jl. H. Agus Salim, No. 154', '-7.637500', '111.517222', 'Restoran yang menyajikan ayam goreng dengan cita rasa khas. Buka setiap hari pukul 10.00 - 22.00 WIB. Menerima pesanan untuk dibawa pulang dan reservasi.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('24', 'Ayam Goreng Kemangi', '4', 'Jl. Sulawesi No.2A', '-7.627778', '111.522778', 'Restoran yang menawarkan menu ayam goreng dengan aroma daun kemangi yang khas', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('25', 'Srasadesa (Sego Sambel)', '4', 'Jl. Jawa No.8,', '-7.623056', '111.522778', 'Menyajikan berbagai menu nasi dengan sambal pedas yang lezat. Telah tersertifikasi halal', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('26', 'Waroeng Spesial Sambal \"SS\"', '4', 'Jl. H. Agus Salim No.180wa Timur 63129', '-7.638611', '111.517222', 'Restoran yang menawarkan berbagai pilihan sambal pedas dengan menu pendamping seperti ayam dan bebek', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('27', 'Buli Buli Madiun', '4', 'Jl. Dr. Sutomo No.63', '-7.627500', '111.523611', 'Tempat makan yang menyajikan berbagai hidangan khas dengan suasana yang nyaman.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('28', 'Lombok Idjo', '4', 'Jl. Kalimantan No.36', '-7.626389', '111.520833', 'Restoran yang menawarkan masakan pedas khas dengan berbagai menu pilihan', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('29', 'Depot Nasi Pecel Madiun 99', '4', 'Jl. Cokroaminoto No.99', '-7.635278', '111.519444', 'Menyajikan nasi pecel khas Madiun dengan cita rasa autentik.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('30', 'Bogowonto', '4', 'Jl. H. Agus Salim', '-7.630556', '111.516944', 'Tempat makan yang menawarkan berbagai hidangan khas dengan suasana yang nyaman', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('31', 'Bluder Cokro', '4', 'Jl. Hayam Wuruk No.51-53', '-7.631389', '111.508889', 'Toko roti yang terkenal dengan roti bluder khas Madiun yang lembut dan lezat.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('32', 'Nasi pecel Pojok', '4', 'Jl. Cokroaminoto No.121', '-7.636389', '111.519722', 'Menyajikan nasi pecel dengan bumbu kacang yang khas dan cita rasa tradisional.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('33', 'Soto Ayam Kondang', '4', 'Jl. Cokroaminoto No.58', '-7.633333', '111.519167', 'Menyajikan soto ayam dengan cita rasa khas yang menjadi favorit warga lokal.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('34', 'Dawet Suronatan', '4', 'Jl. Aloon-Aloon Utara No.10', '-7.628056', '111.515556', 'Warung legendaris di Kota Madiun yang terkenal dengan dawetnya yang segar dan lezat.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('35', 'Ngrowo Bening Edu Park Kota Madiun', '5', 'Jl. Jeruk No.2, Taman, Kec. Taman, Kota Madiun', '-7.636667', '111.530000', 'Ngrowo Bening Edu Park adalah sebuah taman wisata yang terletak di Jl. Jeruk Kota Madiun. Tempat ini mengusung konsep alam dan edukasi, menawarkan berbagai fasilitas seperti taman, pohon trembesi, pembibitan sayur dan buah, serta wahana rekreasi dan edukasi. Pengunjung dapat menikmati suasana sejuk dan nyaman karena taman ini dikelilingi oleh pohon trembesi. Selain itu, pengunjung juga dapat berolahraga, bersantai, berfoto, atau menikmati wisata petik buah. Berbagai jenis buah dan sayuran seperti tomat, terong, melon, semangka, pisang, pepaya, dan kacang panjang ditanam di kebun ini menggunakan pestisida organik, sehingga lebih sehat dan aman dikonsumsi. Ngrowo Bening Edu Park buka setiap hari mulai pukul 07.00 hingga 17.00 WIB dan tidak memungut biaya masuk. Gubernur Sumatera Utara, Edy Rahmayadi, bahkan ingin mencontoh taman ini di daerahnya karena kebersihan, kehijauan, dan banyaknya pohon buah serta kolam ikan', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('36', 'Taman Trembesi Kota Madiun', '5', 'Jl. Rimbakaya, Kartoharjo, Kec. Kartoharjo, Kota Madiun', '-7.626667', '111.527222', 'Taman Trembesi terletak di kompleks kantor Perhutani KPH Madiun, Kecamatan Kartoharjo. Taman ini dipenuhi pohon trembesi yang besar dan rindang, menjadikannya tempat yang sejuk dan nyaman untuk rekreasi keluarga. Taman ini juga dilengkapi dengan berbagai wahana seperti paintball, ATV, dan flying fox', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('37', 'Taman Bantaran Kota Madiun', '5', 'Jl. A. Yani No.69, Pangongangan, Manguharjo', '-7.628889', '111.512972', 'Taman ini menawarkan berbagai fasilitas seperti area bermain anak, lapangan olahraga, dan kolam ikan. Taman ini juga menjadi tempat favorit untuk bersantai dan menikmati suasana hijau di tengah kota', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('38', 'Bumi Semendung', '5', 'Jl. Bhakti Wijaya No.9, Klegen, Kec. Kartoharjo, Kota Madiun', '-7.628611', '111.537222', 'Bumi Semendung adalah destinasi wisata kuliner yang terletak di Jl. Bhakti Wijaya No.9, Kelurahan Klegen. Tempat ini menawarkan pengalaman menikmati kuliner di tengah hamparan sawah hijau. Selain itu, Bumi Semendung juga menyediakan spot foto yang instagramable dan berbagai lapak UMKM', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('39', 'Galeri Batik Murni Madiun', '5', 'Jl. Halmahera No.21, Oro-oro Ombo, Kartoharjo', '-7.624722', '111.526944', 'Galeri Batik Murni terletak di Jl. Halmahera No.21, Oro-oro Ombo. Galeri ini menawarkan berbagai jenis batik khas Madiun yang dibuat secara tradisional. Pengunjung dapat melihat proses pembuatan batik dan membeli berbagai produk batik seperti kain, pakaian, dan aksesoris', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('40', 'Taman Hutan Kota Madiun', '5', 'Jl. Basuki Rahmad, Patihan, Kec. Manguharjo, Kota Madiun', '-7.610278', '111.533889', 'Taman Hutan Kota Madiun memiliki berbagai jenis tumbuhan hijau yang dilengkapi dengan kolam ikan, sehingga menambah keindahan suasana taman. Tersedia juga fasilitas jogging track bagi pengunjung yang ingin berolahraga ringan sambil menikmati udara segar.', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('41', 'Hutan Kota Ngegong Kota Madiun', '5', 'Jl. Keningar, Ngegong, Kec. Manguharjo, Kota Madiun', '-7.607222', '111.514722', 'Hutan Kota Ngegong terletak di Jl. Keningar, Ngegong, Kecamatan Manguharjo. Hutan ini ditumbuhi pohon-pohon rindang. Tempat ini cocok untuk berbagai kegiatan masyarakat seperti bersantai, berolahraga, dan menikmati alam', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);
INSERT INTO `cultural_heritages` VALUES ('42', 'Pahlawan Street Center', '3', 'Jl. Pahlawan No.31, Kartoharjo, Kec. Kartoharjo, Kota Madiun', '-7.625000', '111.520000', 'Pahlawan Street Center (PSC) adalah destinasi wisata baru di Kota Madiun yang menawarkan pengalaman unik dengan menghadirkan replika ikon-ikon dunia. Terletak di Jalan Pahlawan, PSC sering disebut sebagai \"Malioboronya Madiun\" karena suasananya yang mirip dengan kawasan Malioboro di Yogyakarta', '2025-02-12 10:22:12', '2025-02-12 10:22:12', null);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for master_categories
-- ----------------------------
DROP TABLE IF EXISTS `master_categories`;
CREATE TABLE `master_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of master_categories
-- ----------------------------
INSERT INTO `master_categories` VALUES ('1', 'Cagar Budaya', '2025-02-12 10:22:10', '2025-02-12 10:22:10');
INSERT INTO `master_categories` VALUES ('2', 'Religi', '2025-02-12 10:22:10', '2025-02-12 10:22:10');
INSERT INTO `master_categories` VALUES ('3', 'Monumen dan Landmark', '2025-02-12 10:22:10', '2025-02-12 10:22:10');
INSERT INTO `master_categories` VALUES ('4', 'Kuliner', '2025-02-12 10:22:10', '2025-02-12 10:22:10');
INSERT INTO `master_categories` VALUES ('5', 'Wisata Edukasi', '2025-02-12 10:22:10', '2025-02-12 10:22:10');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2025_02_09_074100_create_cultural_heritages_table', '1');
INSERT INTO `migrations` VALUES ('6', '2025_02_11_192517_create_master_category_table', '1');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
