/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.1.34-MariaDB : Database - pmkp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pmkp` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `kode` */

DROP TABLE IF EXISTS `kode`;

CREATE TABLE `kode` (
  `id_kode` int(12) NOT NULL AUTO_INCREMENT,
  `kode` varchar(10) DEFAULT NULL,
  `kode_desc` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_kode`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `kode` */

insert  into `kode`(`id_kode`,`kode`,`kode_desc`) values 
(1,'ISKP','Standar Keselamatan Pasien'),
(2,'IKPI','Indikator berkaitan dengan Kay Fermormance '),
(3,'IPS','Indikator Perbaikan Sistem'),
(4,'IPK','Indikator Prioritas Klinik'),
(5,'IMR','Indikator Manajemen Resiko'),
(6,'IPKPK','Indikator penelitian klinis dan pendidikan kedokteran');

/*Table structure for table `master_indikator` */

DROP TABLE IF EXISTS `master_indikator`;

CREATE TABLE `master_indikator` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` text,
  `unit` varchar(30) DEFAULT NULL,
  `isdeleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

/*Data for the table `master_indikator` */

insert  into `master_indikator`(`id`,`judul`,`unit`,`isdeleted`) values 
(1,'Waktu Tunggu Rawat Inap < 6 jam','B-GD-001',0),
(2,'Kepatuhan Identifikasi Pasien','B-GD-001',0),
(3,'Kejadian kematian Ibu krn Eklampsi/Preeklampsi','B-GD-001',0),
(4,'Kepuasan pasien (pelanggan) terhadap pelayanan IGD','B-GD-001',0),
(5,'kepatuhan pencegahan pasien jatuh','B-GD-001',0),
(6,' Pemberi pelayanan dengan persalinan normal dokter SpOG dan bidan sudah terlatih APN','B-KB-001',1),
(7,' Kejadian kematian ibu karena persalinan','B-KB-001',1),
(8,'Pelaksanaan Keselamatan Opersi(surgicalsafety checlist)','B-JT-001',1),
(9,'Kepuasan Pelanggan ','B-KB-001',1),
(10,'Kejadian Kematian Ibu Karena Perdarahan','B-GD-001',0),
(11,'Waktu tunggu Rawat Jalan','B-RJ-001',0),
(12,'Kepatuhan Identifikasi Pasien','B-RJ-001',0),
(13,'Kepuasan pasien (pelanggan) terhadap  pelayanan Rawat jalan','B-RJ-001',0),
(14,'Kelengkapan pengisian Rekam medik 24 jam setelah selesai pelayanan','B-RM-003',0),
(15,'Kelengkapan Informed Consent setelah Mendapatkan Informasi yang Jelas','B-RM-003',0),
(16,'Waktu penyediaan dokumen rekam medik pelayanan rawat jalan ? 10 menit','B-RM-003',0),
(17,'Adanya Kejadian KesalahanTindakan /Iintervensi Terapi di Instalasi Rehabilitasi Medik','B-RM-002',0),
(18,'Kejadian drop out pasien di instalasi Rehabilitasi Medik','B-RM-002',0),
(19,'kepuasan pelanggan','B-RM-002',0),
(20,'Kegagalan Pelayanan Rontgen','B-R-001',0),
(21,'Kepatuhan Identifikasi Pasien Kepatuhan Identifikasi Pasien','B-R-001',0),
(22,'Waktu tungu pelayanan foto ? 3 jam','B-R-001',0),
(23,'Kepuasan Pasien (pelanggan) terhadap Pelayanan Radiologi','B-R-001',0),
(24,'Waktu tunggu expertise hasil CT Scan Non Kontras / polos < 3-4 jam','B-R-001',0),
(25,'Waktu tunggu expertise hasil CT Scan Kontras < 24 jam','B-R-001',0),
(26,'Waktu tunggu expertise hasil CT Cardiac/ 3 Fase/ CTA < 2-3 hari','B-R-001',0),
(27,'Kepatuhan penggunaan Formularium Nasional','B-F-001',0),
(28,'Kepatuhan Terhadap Pemberian Obat Hight Alert','B-F-001',0),
(29,'Angka kelayakan berkas klaim Rawat Jalan BPJS','B-PPAT-001',0),
(30,'Ketepatan jadwal pengiriman berkas klaim Rawat Jalan ke kantor BPJS Kesehatan','B-PPAT-001',0),
(31,'Angka Pending berkas klaim Rawat Jalan BPJS','B-PPAT-001',1),
(32,'Angka Pending berkas klaim Rawat Jalan BPJS','B-PPAT-001',0),
(33,'Angka kelayakan berkas klaim Rawat Inap BPJS','B-PPAT-001',1),
(34,'Angka kelayakan berkas klaim Rawat Inap BPJS','B-PPAT-001',0),
(35,'Ketepatan jadwal pengiriman berkas klaim Rawat Inap ke kantor BPJS Kesehatan','B-PPAT-001',0),
(36,'Angka Pending berkas klaim Rawat Inap BPJS','B-PPAT-001',0),
(37,'Respon time operasi Cito < 30 menit','B-BS-001',0),
(38,'Kepatuhan Identifikasi Pasien','B-BS-001',0),
(39,'Waktu tunggu operasi elektif < 2 hari','B-BS-001',0),
(40,'Pelaksanaan Checklist Keselamatan Operasi  ( Surgical Safety Checklist) pada Pasien operasi','B-BS-001',0),
(41,'Pelaksanaan Prosedur Site Marking pada pasien','B-BS-001',0),
(42,'Penundaan Operasi Elektif','B-BS-001',0),
(43,'Pelaksanaan Asesmen Pra Bedah','B-BS-001',0),
(44,' Pelaksanaan Asesmen Pre Anestesi','B-BS-001',0),
(45,'Kelengkapan Laporan Anestesi','B-BS-001',0),
(46,'Konversi Tindakan Anestesi dari  Lokal/Regional ke General','B-BS-001',0),
(47,'Efek Samping Selama Sedasi Moderat  dan Pemakaian Anestesi ','B-BS-001',0),
(48,'Sisa makanan yang tidak termakan oleh pasien','B-G-001',0),
(49,'Jumlah Ukuran diet yang sesuai dengan pasien','B-G-001',0),
(50,'Pemberi pelayanan dengan persalinan normal dokter SpOG dan bidan sudah terlatih APN','B-KB-001',0),
(51,'Kejadian kematian ibu karena persalinan','B-KB-001',0),
(52,'Pemberi pelayanan persalinan dengan penyulit dr. Sp.OG,  dr Sp.A dan bidan terlatih','B-KB-001',0),
(53,'Pertolongan persalinan melalui secsio caesaria ','B-KB-001',0),
(54,'Kepuasan pelanggan','B-KB-001',0),
(55,'Waktu Tanggap Pelayanan Pemulasaraan Jenazah','B-KJ-001',0),
(56,'Tidak adanya kejadian kehilangan barang baik karyawan, pasien dan keluarga pasien','B-KRS(-001',0),
(57,'Petugas Keamanan Melakukan Pengawasan Keliling RS ','B-KRS(-001',0),
(58,'Judul Indikator : Petugas keamanan keamanan bersertifikat ','B-KRS(-001',0),
(59,'ketepatan waktu penyediaan linen untuk ruang rawat inap','B-L-001',0),
(60,'Tidak Adanya Kejadian Linen Hilang','B-L-001',0),
(61,'Pengelolaan Sampah Medis','B-PLDS-001',0),
(62,'Baku mutu Limbah Cair','B-PLDS-001',0),
(63,'Pemantauan kebersihan ruang bangunan dan halaman','B-PLDS-001',0),
(64,'Waktu tunggu Rawat Jalan/MCU','B-M-001',0),
(65,'Waktu penyampaian nilai kritis < 30 menit','B-L-002',0),
(66,'Kepatuhan Identifikasi Pasien','B-L-002',0),
(67,'Waktu Tunggu Hasil Pelayanan Laboratorium','B-L-002',0),
(68,'Kepuasan pasien (pelanggan) terhadap  pelayanan Laboratorium','B-L-002',0),
(69,'Kejadian Ventilator Associated Pneumonia (VAP)(NICU)','B-P-002',0),
(70,'Kepatuhan Identifikasi Pasien(NICU)','B-P-002',0),
(71,' Jumlah Seluruh peluang Identifikasi  yang dilakukan','B-P-002',1),
(72,'Jam visite dokter spesialis sesuai jam dinas(NICU)','B-P-002',0),
(73,'Kepatuhan Pencegahan Pasien jatuh(NICU)','B-P-002',0),
(74,' Kepuasaan Pelanggan(NICU)','B-P-002',0),
(75,'Reaksi Tranfusi(NICU)','B-P-002',0),
(76,'Kejadian Infeksi Nosokomial','B-P-002',0),
(77,'Kepatuhan Identifikasi Pasien(NEONATUS)','B-P-002',0),
(78,'Jam visite dokter spesialis sesuai jam dinas(NEONATUS)','B-P-002',0),
(79,'Kepuasaan Pelanggan(NEONATUS)','B-P-002',0),
(80,'Kepatuhan Pencegahan Pasien jatuh (NEONATUS)','B-P-002',0),
(81,'Reaksi Tranfusi(NEONATUS)','B-P-002',0),
(82,'Kualitas Proses Hasil Sterilisasi','B-C-001',0),
(83,'Pemakaian APD di raungan pembersihan/Dekontaminasi unit CSSD','B-C-001',0),
(84,'kepatuhan pemakaian indikator pada proses sterilisasi','B-C-001',0),
(85,'tidak adanya kerusakan kemasan setelah proses sterilisasi','B-C-001',0),
(86,'Kepatuhan Identifikasi Pasien','B-H-001',0),
(87,'Keterlambatan waktu tindakan Hemodialisis','B-H-001',0),
(88,'Visite dokter saat jam  kerja','B-H-001',0),
(89,'Kepuasan pasien (pelanggan) terhadap pelayanan Hemodialisis','B-H-001',0),
(90,'Kepatuhan pencegahan pasien jatuh','B-H-001',0),
(91,'Pelaksanaan Keselamatan Opersi(surgicalsafety checlist)','B-C-002',0),
(92,'Kelengkapan Informen consent','B-C-002',0),
(93,'Assesment keperawatan lengkap dalam 24 jam','B-C-002',1),
(94,'Tidak ada Kejadian Hematoma Paska Kateterisasi Jantung','B-C-002',0),
(95,'Kejadian Ventilator Associated Pneumonia (VAP)','B-IID-001',0),
(96,'Kepatuhan Identifikasi Pasien','B-IID-001',0),
(97,'Jam Visite dokter spesialis sesuai jam dinas','B-IID-001',0),
(98,'Pencegahan Kepatuhan Pasien Jatuh','B-IID-001',0),
(99,'Kepuasan pasien (pelanggan) terhadap pelayanan ICU','B-IID-001',0),
(100,'Kejadian Ventilator Associated Pneumonia (VAP)','B-PIA-001',0),
(101,'Kepatuhan Identifikasi Pasien','B-PIA-001',0),
(102,'Rata-rata pasien yang kembali ke perawatan intensif dengan kasus yang sama < 72 jam','B-PIA-001',0),
(103,'Kepatuhan  Pencegahan Resiko Jatuh','B-PIA-001',0),
(104,'Kejadian reaksi Transfusi Darah','B-PIA-001',0),
(105,'Kepuasaan Pelanggan','B-PIA-001',0),
(106,'Kepatuhan Identifikasi Pasien','B-V-001',0),
(107,'Kepatuhan Terhadap SBAR','B-V-001',0),
(108,' Assesment Medis Rawat Inap lengkap < 24 jam','B-V-001',0),
(109,'Kepuasan pasien (pelanggan) terhadap pelayanan Rawat Inap','B-V-001',0),
(110,'kepatuhan pencegahan Pasien Jatuh','B-V-001',0),
(111,'Kematian pasien > dari 48 jam sejak MRS','B-V-001',0),
(112,'Kejadian Pasien Pulang Paksa','B-V-001',0),
(113,'Jam Visite dokter spesialis sesuai jam dinas','B-V-001',0),
(114,'Kepatuhan Identifikasi Pasien','B-VA-001',0),
(115,'Kepatuhan Terhadap SBAR','B-VA-001',0),
(116,'Assesment Medis Rawat Inap lengkap < 24 jam','B-VA-001',0),
(117,'kepatuhan pencegahan pasien jatuh','B-VA-001',0),
(118,'Kematian pasien > dari 48 jam sejak MRS','B-VA-001',0),
(119,'Kejadian Pasien Pulang Paksa','B-VA-001',0),
(120,'Jam Visite dokter spesialis sesuai jam dinas','B-VA-001',0),
(121,'Kepuasan pasien (pelanggan) terhadap pelayanan rawat inap','B-VA-001',0),
(122,'Kepatuhan Identifikasi Pasien','B-V-002',0),
(123,'Kepatuhan Terhadap SBAR','B-V-002',0),
(124,'Assesment Medis Rawat Inap lengkap < 24 jam','B-V-002',0),
(125,'Kepuasan pasien (pelanggan) terhadap pelayanan rawat inap','B-V-002',0),
(126,'kepatuhan pencegahan pasien jatuh','B-V-002',0),
(127,'Kematian pasien > dari 48 jam sejak MRS','B-V-002',0),
(128,'Kejadian Pasien Pulang Paksa','B-V-002',0),
(129,'Jam Visite dokter spesialis sesuai jam dinas','B-V-002',0),
(130,'Kepatuhan Identifikasi Pasien','B-VC-001',0),
(131,'Kepatuhan Terhadap SBAR','B-VC-001',0),
(132,'Assesment Medis Rawat Inap lengkap < 24 jam','B-VC-001',0),
(133,'Kepuasan pasien (pelanggan) terhadap pelayanan rawat inap','B-VC-001',0),
(134,'kepatuhan pencegahan pasien jatuh','B-VC-001',0),
(135,'Kematian pasien > dari 48 jam sejak MRS','B-VC-001',0),
(136,'Kejadian Pasien Pulang Paksa','B-VC-001',0),
(137,'Jam Visite dokter spesialis sesuai jam dinas','B-VC-001',0),
(138,'Kepatuhan Terhadap SBAR','B-VA-002',0),
(139,'Assesment Medis Rawat Inap lengkap < 24 jam','B-VA-002',0),
(140,'kepatuhan pencegahan pasien jatuh','B-VA-002',0),
(141,'Kematian pasien > dari 48 jam sejak MRS','B-VA-002',0),
(142,'Kejadian Pasien Pulang Paksa','B-VA-002',0),
(143,'Jam Visite dokter spesialis sesuai jam dinas','B-VA-002',0),
(144,'Kepuasan pasien (pelanggan) terhadap pelayanan Rawat Inap','B-VA-002',0),
(145,'Kepatuhan Identifikasi Pasien','B-VA-002',0),
(146,'Kepatuhan Identifikasi Pasien','B-VL-001',0),
(147,' Kepatuhan Terhadap SBAR','B-VL-001',0),
(148,' Assesment Medis Rawat Inap lengkap < 24 jam','B-VL-001',0),
(149,'Kepuasan pasien (pelanggan) terhadap pelayanan rawat inap','B-VL-001',0),
(150,'kepatuhan pencegahan pasien jatuh','B-VL-001',0),
(151,'Kematian pasien > dari 48 jam sejak MRS','B-VL-001',0),
(152,'Kejadian Pasien Pulang Paksa','B-VL-001',0),
(153,'Jam Visite dokter spesialis sesuai jam dinas','B-VL-001',0);

/*Table structure for table `master_numerator` */

DROP TABLE IF EXISTS `master_numerator`;

CREATE TABLE `master_numerator` (
  `idnum` int(10) NOT NULL AUTO_INCREMENT,
  `unit` varchar(20) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `indikator` int(10) DEFAULT NULL,
  `deskripsi` text,
  `operator` varchar(10) DEFAULT NULL,
  `standar` int(10) DEFAULT NULL,
  `mutu_rs` varchar(10) DEFAULT NULL,
  `isdeletednum` int(1) DEFAULT '0',
  PRIMARY KEY (`idnum`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

/*Data for the table `master_numerator` */

insert  into `master_numerator`(`idnum`,`unit`,`jenis`,`indikator`,`deskripsi`,`operator`,`standar`,`mutu_rs`,`isdeletednum`) values 
(4,'B-GD-001','numerator',1,'Jumlah  pasien yang akan  rawat inap dari   IGD yang < dari 6 jam',NULL,100,NULL,0),
(5,'B-GD-001','denumerator',1,'Jumlah seluruh pasien yang dirawat inap dari  IGD',NULL,100,NULL,0),
(6,'B-GD-001','numerator',5,'asdasd',NULL,10,NULL,1),
(7,'B-KB-001','numerator',7,' Jumlah kematian pasien persalinan karena :','===',0,NULL,0),
(8,'B-JT-001','numerator',8,'kejadian komplikasi pd pasien setelah tindakan\"','==',100,NULL,0),
(9,'B-KB-001','denumerator',7,'Jumlah pasien-pasien persalinan dengan ','===',0,NULL,0),
(10,'B-KB-001','numerator',9,'Jumlah komulatif hasil penilaian kepuasan dari pasien yang disurvei ( dalam prosen )','==',81,NULL,0),
(11,'B-GD-001','numerator',10,'Kejadian Kematian Ibu Karena Perdarahan','<=',1,NULL,0),
(12,'B-GD-001','denumerator',10,'Jumlah pasien persalinan dengan perdarahan','<=',1,NULL,0),
(13,'B-RJ-001','numerator',11,'Jumlah pasien rawat jalan dengan waktu tunggu  ? 60 menit ','==',80,NULL,0),
(14,'B-RJ-001','denumerator',11,' Jumlah pasien rawat jalan yang diobservasi','==',80,NULL,0),
(15,'B-RJ-001','numerator',11,'jumlah Identifikasi yang dilakukan','===',80,NULL,0),
(16,'B-RJ-001','denumerator',11,'Jumlah Seluruh peluang Identifikasi  yang dilakukan','===',80,NULL,0),
(17,'B-RJ-001','numerator',13,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)',' ',80,NULL,0),
(18,'B-RJ-001','denumerator',13,'jumlah total pasien yang disurvey (min N=50)','==',80,NULL,0),
(19,'B-RM-003','numerator',14,'Jumlah rekam medik yang disurvey dalam 1 bulan yang disi lengkap','==',100,NULL,0),
(20,'B-RM-003','denumerator',14,'Jumlah rekam medik yang disurvey dalam 1 bulan','==',100,NULL,0),
(21,'B-RM-003','numerator',15,'Jumlah pasien yang mendapatkan tindakan medik yang disurvey yang mendapatkan informasi lengkap sebelum memberikan persetujuan tindakan medik dalam 1 bulan','==',100,NULL,0),
(22,'B-RM-003','denumerator',15,'Jumlah pasien yang mendapatkan tindakan medik dalam 1 bulan','==',100,NULL,0),
(23,'B-RM-003','numerator',16,'Jumlah komulatif waktu penyedian Rekam Medis ','==',100,NULL,0),
(24,'B-RM-003','denumerator',16,'Total penyedia rekam medis dalam 1 bulan','==',100,NULL,0),
(25,'B-RM-002','numerator',17,'Jumlah pasien yang mengalami kesalahan tindakan terapi di instalasi Rehabilitasi Medik dalam 1 bulan ','==',0,NULL,0),
(26,'B-RM-002','denumerator',17,'Jumlah seluruh pasien yang disurvei di instalasi Rehabilitasi Medik (Minimal N = 50)','==',0,NULL,0),
(27,'B-RM-002','numerator',18,'Jumlah seluruh pasien yang drop out dalam 1 bulan ','==',50,NULL,0),
(28,'B-RM-002','denumerator',18,'Jumlah seluruh pasien yang diprogram terapi di instalasi Rehabilitasi Medik dalam 1 bulan ','==',50,NULL,0),
(29,'B-RM-002','numerator',19,'Jumlah kumulatif hasil penilaian kepuasan dari pelanggan Rehabilitasi Medik yang disurvei ','==',80,NULL,0),
(30,'B-RM-002','denumerator',19,'Jumlah total pelanggang Rehabilitasi Medik yang disurvei ','==',80,NULL,0),
(31,'B-R-001','numerator',20,'Jumlah Komulatif hasil foto Rontgen  yang gagal','<=',2,NULL,0),
(32,'B-R-001','denumerator',20,'Jumlah pasien yang di foto dalam bulan  tersebut yang disurvei ','<=',2,NULL,0),
(33,'B-R-001','numerator',21,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(34,'B-R-001','denumerator',21,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(35,'B-R-001','numerator',22,'Jumlah kumulatif pasien dengan waktu tunggu hasil pelayanan foto ? 3 jam dalam 1 bulan','==',100,NULL,0),
(36,'B-R-001','denumerator',22,'Jumlah pasien yang di foto dalam bulan tersebut yang disurvei','==',100,NULL,0),
(37,'B-R-001','numerator',23,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvei (dalam persen)','==',100,NULL,0),
(38,'B-R-001','numerator',23,'JumlahTotal pasien yang di Survei (min N=50)','==',100,NULL,0),
(39,'B-R-001','numerator',24,'Waktu tunggu expertise hasil CT Scan Non Kontras / Polos < 3-4 jam','==',100,NULL,0),
(40,'B-R-001','denumerator',24,'Waktu tunggu expertise seluruh hasil CT Scan Non Kontras / Polos yang < 3-4 jam','==',100,NULL,0),
(41,'B-R-001','numerator',25,'Waktu tunggu expertise hasil CT Scan Kontras  < 24 jam','==',100,NULL,0),
(42,'B-R-001','denumerator',25,'Waktu tunggu expertise seluruh  hasil CT Scan kontras < 24 jam','==',100,NULL,0),
(43,'B-R-001','numerator',26,'Waktu tunggu expertise hasil CT Cardiac/ 3 Fase/ CTA < 2-3 hari','==',100,NULL,0),
(44,'B-R-001','denumerator',26,'Waktu tunggu seluruh expertise hasil CT Cardiac/ 3 Fase/CTA < 2-3 hari','==',100,NULL,0),
(45,'B-F-001','numerator',27,'Jumlah resep yang sesuai dengan Formularium Nasional','==',100,NULL,0),
(46,'B-F-001','numerator',27,'Jumlah resep yang disurvey','==',80,NULL,0),
(47,'B-F-001','numerator',28,'Jumlah pasien yang diberikan obat Hight Alert','==',80,NULL,0),
(48,'B-F-001','denumerator',28,'Jumlah seluruh pasien yang diberikan obat','==',80,NULL,0),
(49,'B-PPAT-001','numerator',29,'Jumlah berkas klaim BPJS kesehatan yang layak dalam satu bulan','==',95,NULL,0),
(50,'B-PPAT-001','denumerator',29,'Jumlah seluruh berkas klaim BPJS kesehatan yang diajukan dalam bulan tersebut','==',95,NULL,0),
(51,'B-PPAT-001','numerator',30,'Jumlah berkas klaim BPJS kesehatan yang mendapatkan pelayanan dalam satu bulan','==',100,NULL,0),
(52,'B-PPAT-001','denumerator',30,' Jumlah seluruh berkas klaim BPJS kesehatan yang dikirim dalam satu bulan','==',100,NULL,0),
(53,'B-PPAT-001','numerator',31,'Jumlah berkas klaim BPJS kesehatan yang pending dalam satu bulan','==',100,NULL,0),
(54,'B-PPAT-001','denumerator',31,'Jumlah seluruh berkas klaim BPJS kesehatan yang diajukan dalam bulan tersebut','==',100,NULL,0),
(55,'B-PPAT-001','numerator',29,'Jumlah berkas klaim BPJS kesehatan yang pending dalam satu bulan','<=',5,NULL,0),
(56,'B-PPAT-001','denumerator',29,'Jumlah seluruh berkas klaim BPJS kesehatan yang diajukan dalam bulan tersebut','<=',5,NULL,0),
(57,'B-PPAT-001','numerator',33,'Jumlah berkas klaim BPJS kesehatan yang layak dalam satu bulan','==',95,NULL,0),
(58,'B-PPAT-001','numerator',33,'Jumlah seluruh berkas klaim BPJS kesehatan yang diajukan dalam bulan tersebut','==',95,NULL,0),
(59,'B-PPAT-001','numerator',35,'Jumlah berkas klaim BPJS kesehatan yang mendapatkan pelayanan dalam satu bulan','==',95,NULL,0),
(60,'B-PPAT-001','denumerator',35,'Jumlah seluruh berkas klaim BPJS kesehatan yang dikirim dalam satu bulan','==',95,NULL,0),
(61,'B-PPAT-001','numerator',29,'Jumlah berkas klaim BPJS kesehatan yang pending dalam satu bulan','==',5,NULL,0),
(62,'B-PPAT-001','denumerator',29,'Jumlah seluruh berkas klaim BPJS kesehatan yang diajukan dalam bulan tersebut','==',5,NULL,0),
(63,'B-BS-001','numerator',37,'Total operasi cyto dengan respon time < 30 menit','==',80,NULL,0),
(64,'B-BS-001','denumerator',37,'Jumlah seluruh pasien dengan jadwal tindakan emergency (cito)operasi dalam 1 bulan','==',80,NULL,0),
(65,'B-BS-001','numerator',37,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(66,'B-BS-001','denumerator',37,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(67,'B-BS-001','numerator',37,'Jumlah kumulatif waktu tunggu operasi < 2 hari  seluruh pasien yang di operasi dalam 1 bulan','==',80,NULL,0),
(68,'B-BS-001','denumerator',37,'Jumlah seluruh pasien yang telah terjadwal  tindakan (elektif) operasi dalam 1 bulan','==',80,NULL,0),
(69,'B-BS-001','numerator',40,'Jumlah Pasien operasi yang lengkap dalam   pengisian formulir Surgical Safety CheckList','==',100,NULL,0),
(70,'B-BS-001','denumerator',40,'Total pasien yang dilakukan tindakan operasi  pada bulan yang sama','==',100,NULL,0),
(71,'B-BS-001','denumerator',37,'Jumlah pasien yang dilakukan site marking sebelum tindakan operasi','==',100,NULL,0),
(72,'B-BS-001','denumerator',37,'Jumlah semua kasus lokasi operasi ditandai sebelum di rencanakan prosedur pembedahan dikamar operasi selama satu bulan','==',100,NULL,0),
(73,'B-BS-001','numerator',42,'Jumlah pasien yang asesmenya lengkap sebelum di rencanakan prosedur pembedahan dikamar operasi selama satu bulan','<=',5,NULL,0),
(74,'B-BS-001','numerator',43,'Jumlah pasien yang dilakukan asesmen pre anestesi  pada bulan tersebut','==',100,NULL,0),
(75,'B-BS-001','denumerator',43,'Jumlah pasien operasi dengan anestesi pada bulan tersebut','==',100,NULL,0),
(76,'B-BS-001','numerator',44,'Jumlah pasien yang dilakukan asesmen pre anestesi  pada bulan tersebut','==',100,NULL,0),
(77,'B-BS-001','denumerator',44,'jumlah pasien operasi dengan anestesi pada bulan tersebut','==',100,NULL,0),
(78,'B-BS-001','numerator',45,'jumlah kelengkapan laporan Anestesi  perbulan','==',100,NULL,0),
(79,'B-BS-001','denumerator',45,'Jumlah pasien operasi dengan anestesi pada bulan tersebut','==',100,NULL,0),
(80,'B-BS-001','numerator',46,'Jumlah pasien yang mendapat tindakan  konversi anestesi di kamar bedah','==',5,NULL,0),
(81,'B-BS-001','denumerator',46,'jumlah seluruh pasien yang mendapatkan  tindakan anestesi regional di kamar operasi','==',5,NULL,0),
(82,'B-BS-001','numerator',37,'Jumlah Kejadian de-saturasi O2 pada saat  durante anesthesia pasien dengan general  anesthesia dalam satu bulan','==',0,NULL,0),
(83,'B-BS-001','denumerator',37,'Seluruh pasien dengan general Anesthesia','==',0,NULL,0),
(84,'B-G-001','numerator',48,'Jumlah kumulatif proporsi sisa makanan dari pasien yang disurvei dalam satu bulan','==',20,NULL,0),
(85,'B-G-001','denumerator',48,'Jumlah pasien yang disurvei dalam satu bulan','==',20,NULL,0),
(86,'B-G-001','numerator',48,'Jumlah Ukuran diet yang diberikan dengan pasien','==',100,NULL,0),
(87,'B-G-001','denumerator',48,'Jumlah Seluruh diet yang diberikan ke pasien','==',100,NULL,0),
(88,'B-KB-001','numerator',50,'Jumlah pasien kamar bersalin dengan persalinan normal yang di tangani tenaga dokter SpOG,dan bidan terlatih     ( Asuhan Persalinan Normal ) yang di survei','==',100,NULL,0),
(89,'B-KB-001','denumerator',50,'Jumlah pasien persalinan normal dikamar bersalin yang disurvei','==',100,NULL,0),
(90,'B-KB-001','denumerator',50,'Jumlah pasien persalinan normal dikamar bersalin yang disurvei','==',100,NULL,1),
(91,'B-KB-001','numerator',50,'Jumlah pasien persalinan dengan penyulit dikamar bersalin yang ditangani tenaga dokter Sp.OG,bidan yang terlatih','==',100,NULL,0),
(92,'B-KB-001','denumerator',50,'Jumlah pasien persalinan dengan penyulit dikamar bersalin yang disurvei','==',100,NULL,0),
(93,'B-KB-001','numerator',50,' Jumlah persalinan dengan secsio caesaria dalam 1 bulan','<=',20,NULL,0),
(94,'B-KB-001','denumerator',50,'Jumlah seluruh persalinan dalam 1 bulan','<=',20,NULL,0),
(95,'B-KB-001','numerator',54,'Jumlah komulatif hasil penilaian kepuasan dari pasien yang disurvei ( dalam persen )','==',80,NULL,0),
(96,'B-KB-001','denumerator',54,'Jumlah total pasien yang disurvei (n minimal 50)','==',80,NULL,0),
(97,'B-KJ-001','numerator',55,'Jumlah Jenazah Yang Diberikan Pelayanan Dalam Waktu < 2 jam Di RSUD Siti Fatimah dalam 1 Bulan','<=',2,NULL,0),
(98,'B-KJ-001','denumerator',55,'Jumlah Jenazah Yang Dikirim Ke Instalasi Kamar Jenazah dalam 1 Bulan','<=',100,NULL,0),
(99,'B-KRS(-001','numerator',56,'Jumlah kasus kehilangan di RSUD Siti Fatimah per 1 bulan','==',0,NULL,0),
(100,'B-KRS(-001','denumerator',56,'Jumlah hari yang di survei','==',0,NULL,0),
(101,'B-KRS(-001','numerator',56,'Jumlah area yang dikontrol di rumah sakit','==',100,NULL,0),
(102,'B-KRS(-001','denumerator',56,'Jumlah Seluruh area di rumah sakit','==',100,NULL,0),
(103,'B-KRS(-001','numerator',58,'Jumlah petugas keamanan yang memiliki sertifikat','<=',100,NULL,0),
(104,'B-KRS(-001','denumerator',58,'Jumlah seluruh petugas keamanan','<=',100,NULL,0),
(105,'B-L-001','numerator',59,'Jumlah hari dengan penyediaan linen tepat waktu','==',100,NULL,0),
(106,'B-L-001','denumerator',59,'1 hari','==',100,NULL,0),
(107,'B-L-001','numerator',59,'Jumlah hari dengan penyediaan linen tepat waktu','==',1,NULL,0),
(108,'B-L-001','denumerator',59,'1 hari','==',1,NULL,0),
(109,'B-PLDS-001','numerator',61,'Jumlah sampah medis yang dikelola sesuai dengan standar operating prosedur yang diamati','==',100,NULL,0),
(110,'B-PLDS-001','denumerator',61,'Jumlah total proses pengelolaan sampah medis yang diamati','==',100,NULL,0),
(111,'B-PLDS-001','numerator',61,'Hasil laboratorium pemeriksaan limbah cair rumah sakit yang sesuai dengan baku mutu','==',100,NULL,0),
(112,'B-PLDS-001','denumerator',61,'Jumlah seluruh pemeriksaan limbah cair','==',100,NULL,0),
(113,'B-PLDS-001','numerator',63,'Jumlah proses pemantauan dengan hasil kebersihan ruangan sesuai ketentuan yang di amati','==',100,NULL,0),
(114,'B-PLDS-001','denumerator',63,'Jumlah total proses pemantauan kebersihan lingkungan rumah sakit yang diamati','==',100,NULL,0),
(115,'B-M-001','numerator',64,'Jumlah pasien rawat jalan dengan waktu tunggu  ? 60 menit ','==',100,NULL,0),
(116,'B-M-001','denumerator',64,'Jumlah pasien rawat jalan/MCU  yang diobservasi','==',100,NULL,0),
(117,'B-L-002','numerator',65,' Jumlah waktu penyampaian hasil nilai  kritis yang disurvey','==',100,NULL,0),
(118,'B-L-002','denumerator',65,'Jumlah total pasien yang disurvey','==',100,NULL,0),
(119,'B-L-002','numerator',66,'Jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(120,'B-L-002','numerator',66,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(121,'B-L-002','numerator',67,'Jumlah kumulatif waktu tunggu hasil pelayananlab pasien yang disurvey dalam 1 bln(drh rutin)','==',100,NULL,0),
(122,'B-L-002','denumerator',67,'Jumlah pasien yang diperiksa dilab yg disurvey','==',100,NULL,0),
(123,'B-L-002','numerator',68,'pasien yang disurvey (dalam persen)','==',100,NULL,1),
(124,'B-L-002','numerator',68,'pasien yang disurvey (dalam persen)','==',100,NULL,0),
(125,'B-L-002','denumerator',68,'jumlah total pasien yang disurvey  (min N=50)','==',100,NULL,0),
(126,'B-P-002','numerator',69,'Jumlah kejadian kasus infeksi Vetilator Assciated Pneumonia (VAP)','<=',1,NULL,0),
(127,'B-P-002','denumerator',69,'Jumlah lama hari pemakaian ETT atau terpasang ventilator','<=',1,NULL,0),
(128,'B-P-002','numerator',70,'jumlah Identifikasi yang dilakukan','<=',100,NULL,0),
(129,'B-P-002','denumerator',70,' Jumlah Seluruh peluang Identifikasi  yang dilakukan','<=',100,NULL,0),
(130,'B-P-002','numerator',72,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat survey ','==',100,NULL,0),
(131,'B-P-002','denumerator',72,'Jumlah seluruh visite visite dokter spesialis  yang disurvey ','==',100,NULL,0),
(132,'B-P-002','numerator',73,'Jumlah pasien rawat inap beresiko tinggi jatuh yang mendapatkan survey pencegahan pasien jatuh','==',100,NULL,0),
(133,'B-P-002','denumerator',73,'Jumlah pasien rawat inap beresiko tinggi jatuh yang di survey','==',100,NULL,0),
(134,'B-P-002','numerator',69,'Jumlah kumulatif hasil penilaian kepuasan dari pasien yang disurvei ( dalam persen)','==',85,NULL,0),
(135,'B-P-002','denumerator',69,'Jumlah total pasien yang disurvei (n  minimal 50)','==',85,NULL,0),
(136,'B-P-002','numerator',75,'Jumlah Pasien yang mengalami reaksi tranfusi','<=',1,NULL,0),
(137,'B-P-002','denumerator',75,'Jumlah Seluruh pasien yang di transfusi','<=',2,NULL,0),
(138,'B-P-002','numerator',69,'Jumlah  pasien rawat inap yang mengalami infeksi nasokomial dalam satu bulan','==',1,NULL,0),
(139,'B-P-002','denumerator',76,'Jumlah pasien yang dirawat inap dalam bulan tersebut yang disurvei','==',1,NULL,0),
(140,'B-P-002','numerator',77,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(141,'B-P-002','denumerator',77,'Jumlah Seluruh peluang Identifikasi  yang dilakukan','==',100,NULL,0),
(142,'B-P-002','numerator',78,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat survey ','==',100,NULL,0),
(143,'B-P-002','denumerator',78,'Jumlah seluruh visite visite dokter spesialis  yang disurvey ','==',100,NULL,0),
(144,'B-P-002','denumerator',79,'Jumlah kumulatif hasil penilaian kepuasan dari pasien yang disurvei  ( dalam persen)','==',80,NULL,0),
(145,'B-P-002','denumerator',79,'Jumlah total pasien yang disurvei (n  minimal 50)','==',80,NULL,0),
(146,'B-P-002','numerator',80,'Jumlah pasien rawat inap beresiko tinggi jatuh yang mendapatkan survey pencegahan pasien jatuh','==',100,NULL,0),
(147,'B-P-002','denumerator',80,'Jumlah pasien rawat inap beresiko tinggi jatuh yang di survey','==',100,NULL,0),
(148,'B-P-002','numerator',81,'Jumlah Pasien yang mengalami reaksi tranfusi','==',2,NULL,0),
(149,'B-P-002','denumerator',81,'Jumlah Seluruh pasien yang di transfusi','==',1,NULL,0),
(150,'B-C-001','numerator',82,'semua alat atau bahan yang indikatornya berubah warna sesuai tipe Indikator','<=',100,NULL,0),
(151,'B-C-001','denumerator',82,'semua alat atau bahan yang terpasang indikator','<=',100,NULL,0),
(152,'B-C-001','numerator',83,' Jumlah petugas yang patuh pada pemakaian APD','==',100,NULL,0),
(153,'B-C-001','denumerator',83,'Jumlah petugas yang disurvey','==',100,NULL,0),
(154,'B-C-001','denumerator',82,'jumlah set  alat/intrument dan set linen yang distreril','==',100,NULL,0),
(155,'B-C-001','numerator',82,' jumlah set alat dan set linen yang di steril dengan diberi indikator dalam dan indikator luar','==',100,NULL,0),
(156,'B-C-001','numerator',85,' kemasan alat yang dalam keadaan baik','==',100,NULL,0),
(157,'B-C-001','denumerator',85,'semua kemasan yang keluar dari mesin sterilisator','==',100,NULL,0),
(158,'B-H-001','numerator',86,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(159,'B-H-001','denumerator',86,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(160,'B-H-001','numerator',87,'Jumlah  keterlambatan waktu tindakan HD  dalam 1 bulan','==',100,NULL,0),
(161,'B-H-001','denumerator',87,'Jumlah pasien Hd yang dirawat 1 bulan        ','==',100,NULL,0),
(162,'B-H-001','denumerator',87,'Jumlah pasien Hd yang dirawat 1 bulan        ','==',100,NULL,1),
(163,'B-H-001','numerator',88,'Jumlah Visite dokter spesialis yang dilakukan pada jam dinas pada saat survey','==',100,NULL,0),
(164,'B-H-001','denumerator',88,'Jumlah seluruh visite dokter spesialis dalam 1 bulan','==',100,NULL,0),
(165,'B-H-001','numerator',89,' Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)','==',100,NULL,0),
(166,'B-H-001','denumerator',89,'Jumlah total pasien yang disurvey (min N=50)','==',100,NULL,0),
(167,'B-H-001','numerator',86,'Jumlah pasien rawat inap beresiko tinggi jatuh yang mendapatkan upaya pencegahan resiko jatuh','<=',100,NULL,1),
(168,'B-H-001','denumerator',86,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','<=',100,NULL,1),
(169,'B-C-002','numerator',91,'Jumlah Pasien Kateterisasi yang lengkap dalam pengisian  formulir Surgical Safety Cheklist','<=',100,NULL,0),
(170,'B-C-002','denumerator',91,'Total pasien yg dilakukan tindakan kateterisasi jantung dalam 1 bulan','<=',100,NULL,0),
(171,'B-C-002','numerator',92,'Jumlah kelengkapan informed consent pasien yang  disurvey dalam 1 bulan','<=',100,NULL,0),
(172,'B-C-002','denumerator',92,' Jumlah seluruh pasien yang diberikan informed consent  yang disurvey dalam 1 bulan','<=',100,NULL,0),
(173,'B-C-002','numerator',91,'Jumlah Assesment Keperawatan yang Lengkap Dalam 1 bulan','==',100,NULL,0),
(174,'B-C-002','denumerator',91,'Jumlah seluruh Assesment keperawatan  yang disurvey  dalam 1 bulan','==',100,NULL,0),
(175,'B-C-002','numerator',94,'jumlah Tindakan Yang di Lakukan Pada Pasien Diagnosa dan Intervensi Yang di Survey dalam Satu Bulan','==',100,' ',0),
(176,'B-C-002','denumerator',94,'Jumlah Pasien Hematoma Dalam Satu Bulan ','==',100,' ',0),
(177,'B-IID-001','numerator',95,'Jumlah kejadian kasus infeksi Vetilator Assciated Pneumonia (VAP)','<=',1,NULL,0),
(178,'B-IID-001','denumerator',95,'Jumlah lama hari pemakaian ETT atau terpasang ventilator','<=',1,NULL,0),
(179,'B-IID-001','numerator',96,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(180,'B-IID-001','denumerator',96,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(181,'B-IID-001','numerator',97,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','<=',100,NULL,0),
(182,'B-IID-001','denumerator',97,'Jumlah seluruh visite dokter spesialis yang di survey','==',100,NULL,0),
(183,'B-IID-001','numerator',98,'Jumlah pasien rawat inap beresiko tinggi jatuh yang  mendapatkan upaya pencegahan Resiko Jatuh','==',100,NULL,0),
(184,'B-IID-001','denumerator',98,'Jumlah pasien rawat inap beresiko tinggi jatuh  yang diobservasi','==',100,NULL,0),
(185,'B-IID-001','numerator',99,'Jumlah Kumulatif hasil penilaian kepuasan  pasien yang disurvey (dalam persen)','==',95,NULL,0),
(186,'B-IID-001','denumerator',99,'Jumlah total pasien yang disurvey dalam bulan tersebut','==',100,NULL,0),
(187,'B-PIA-001','numerator',100,'Jumlah kejadian kasus infeksi  Vetilator Assciated Pneumonia (VAP)','<=',1,NULL,0),
(188,'B-PIA-001','denumerator',100,'Jumlah lama hari pemakaian ETT atau terpasang Ventilator','<=',1,NULL,0),
(189,'B-PIA-001','numerator',101,'Jumlah Identifikasi yang dilakukan secara tepat','==',100,NULL,0),
(190,'B-PIA-001','denumerator',101,'Jumlah Seluruh pasien yang  dilakukan  Identifikasi ','==',100,NULL,0),
(191,'B-PIA-001','numerator',102,'Jumlah pasien yang kembali ke perawatan intensif dari  ruang rawat inap dengan kasus yang sama dalam    waktu < 72 jam','<=',0,NULL,0),
(192,'B-PIA-001','denumerator',102,'Jumlah seluruh pasien yang di rawat di intensif  yang survey','<=',0,NULL,0),
(193,'B-PIA-001','denumerator',102,'Jumlah seluruh pasien yang di rawat di intensif  yang survey','<=',0,NULL,0),
(194,'B-PIA-001','numerator',103,'Jumlah seluruh pasien yang  disurvey yang dilakukan  pencegahan resiko jatuh','<=',100,NULL,0),
(195,'B-PIA-001','denumerator',103,'Jumlah seluruh pasien yang  disurvey yang dilakukan  pencegahan resiko jatuh','<=',100,NULL,0),
(196,'B-PIA-001','numerator',104,'Jumlah kejadian reaksi transfusi dalam 1 bulan','<=',0,NULL,1),
(197,'B-PIA-001','numerator',105,'Jumlah kumulatif hasil penilaian kepuasan dari pasien yang disurvei','==',85,NULL,0),
(198,'B-PIA-001','denumerator',105,'Jumlah total pasien yang disurvei (n  minimal 50)','==',85,NULL,0),
(199,'B-PIA-001','numerator',104,'Jumlah kejadian reaksi transfusi dalam 1 bulan','<=',0,NULL,0),
(200,'B-PIA-001','denumerator',104,'Jumlah pasien yang mendapat tindakan medik  yang disurvei dalam satu bulan','<=',0,NULL,0),
(201,'B-V-001','numerator',106,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(202,'B-V-001','denumerator',106,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(203,'B-V-001','denumerator',107,' Therapy yang diberikan melalui ','==',100,NULL,0),
(204,'B-V-001','denumerator',107,' Semua therapy yang menggunakan tehnik SBAR yang diamati','==',100,NULL,0),
(205,'B-V-001','numerator',108,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(206,'B-V-001','denumerator',108,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(207,'B-V-001','numerator',109,'Jumlah Kumulatif hasil penilaian kepuasan  pasien yang disurvey (dalam persen)','==',85,NULL,0),
(208,'B-V-001','denumerator',109,' jumlah total pasien yang disurvey (min N=50)','==',85,NULL,0),
(209,'B-V-001','numerator',110,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi  yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(210,'B-V-001','denumerator',110,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','==',100,NULL,0),
(211,'B-V-001','numerator',111,'Jumlah kejadian kematian pasien rawat inap  > 48 jam dalam 1 bulan','<=',5,NULL,0),
(212,'B-V-001','numerator',111,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',5,NULL,0),
(213,'B-V-001','numerator',112,'Jumlah pasien pulang paksa dalam 1 bulan','<=',0,NULL,0),
(214,'B-V-001','denumerator',112,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',0,NULL,0),
(215,'B-V-001','numerator',113,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','<=',100,NULL,0),
(216,'B-V-001','denumerator',113,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','<=',100,NULL,0),
(217,'B-VA-001','numerator',114,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(218,'B-VA-001','denumerator',114,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(219,'B-VA-001','numerator',115,'Jumlah pasien yang yang diberi obat dengan metode SBAR','==',100,NULL,0),
(220,'B-VA-001','denumerator',115,'Jumlah pasien yang disurvei dalam satu bulan ','==',100,NULL,0),
(221,'B-VA-001','numerator',116,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(222,'B-VA-001','denumerator',116,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(223,'B-VA-001','numerator',117,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi  yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(224,'B-VA-001','denumerator',117,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','==',100,NULL,0),
(225,'B-VA-001','numerator',118,'Jumlah kejadian kematian pasien rawat inap  > 48 jam dalam 1 bulan','<=',5,NULL,0),
(226,'B-VA-001','denumerator',118,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',5,NULL,0),
(227,'B-VA-001','numerator',119,'Jumlah pasien pulang paksa dalam 1 bulan','<=',0,NULL,0),
(228,'B-VA-001','denumerator',119,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',0,NULL,0),
(229,'B-VA-001','numerator',120,'Jam Visite dokter spesialis sesuai jam dinas','<=',100,NULL,0),
(230,'B-VA-001','denumerator',120,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','<=',100,NULL,0),
(231,'B-VA-001','numerator',121,'Jumlah Kumulatif hasil penilaian kepuasan  pasien yang disurvey (dalam persen)','<=',85,NULL,0),
(232,'B-VA-001','denumerator',121,'jumlah total pasien yang disurvey (min N=50)','<=',85,NULL,0),
(233,'B-V-002','numerator',129,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','==',100,NULL,0),
(234,'B-V-002','denumerator',129,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','==',100,NULL,0),
(235,'B-V-002','numerator',128,'Jumlah pasien pulang paksa dalam 1 bulan','<=',5,NULL,0),
(236,'B-V-002','denumerator',128,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',5,NULL,0),
(237,'B-V-002','numerator',127,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',0,NULL,0),
(238,'B-V-002','denumerator',127,'Jumlah kejadian kematian pasien rawat inap > 48 jam dalam 1 bulan','<=',0,NULL,0),
(239,'B-V-002','denumerator',126,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','==',100,NULL,0),
(240,'B-V-002','numerator',126,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(241,'B-V-002','denumerator',125,'jumlah total pasien yang disurvey (min N=50)','==',85,NULL,0),
(242,'B-V-002','numerator',125,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)','==',95,NULL,0),
(243,'B-V-002','denumerator',124,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(244,'B-V-002','numerator',124,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(245,'B-V-002','denumerator',123,'Semua therapy yang menggunakan tehnik SBAR yang diamati','==',100,NULL,0),
(246,'B-V-002','numerator',123,'Therapy yang diberikan melalui tehnik SBAR','==',100,NULL,0),
(247,'B-V-002','denumerator',122,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(248,'B-V-002','numerator',122,'Jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(249,'B-VC-001','numerator',130,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(250,'B-VC-001','denumerator',130,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(251,'B-VC-001','numerator',131,'Therapy yang diberikan melalui tehnik SBAR','==',100,NULL,0),
(252,'B-VC-001','denumerator',131,'Semua therapy yang menggunakan tehnik SBAR yang diamati','==',100,NULL,0),
(253,'B-VC-001','numerator',132,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(254,'B-VC-001','denumerator',132,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(255,'B-VC-001','numerator',133,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)','==',100,NULL,0),
(256,'B-VC-001','denumerator',133,'jumlah total pasien yang disurvey (min N=50)','==',100,NULL,0),
(257,'B-VC-001','numerator',134,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(258,'B-VC-001','denumerator',134,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','==',100,NULL,0),
(259,'B-VC-001','numerator',135,'Jumlah kejadian kematian pasien rawat inap > 48 jam dalam 1 bulan','==',5,NULL,0),
(260,'B-VC-001','denumerator',135,'Jumlah seluruh pasien yang dirawat dalam1 bulan','==',5,NULL,0),
(261,'B-VC-001','numerator',136,'Jumlah pasien pulang paksa dalam 1 bulan','==',0,NULL,0),
(262,'B-VC-001','denumerator',136,'Jumlah seluruh pasien yang dirawat dalam 1 bulan','==',0,NULL,0),
(263,'B-VC-001','numerator',137,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','==',100,NULL,0),
(264,'B-VC-001','denumerator',137,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','==',100,NULL,0),
(265,'B-VA-002','numerator',145,'jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(266,'B-VA-002','denumerator',145,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(267,'B-VA-002','numerator',139,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(268,'B-VA-002','denumerator',139,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(269,'B-VA-002','numerator',138,'Therapy yang diberikan melalui tehnik SBAR','==',100,NULL,0),
(270,'B-VA-002','denumerator',138,'Semua therapy yang menggunakan tehnik SBAR yang diamati','==',100,NULL,0),
(271,'B-VA-002','numerator',140,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(272,'B-VA-002','denumerator',140,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi','==',100,NULL,0),
(273,'B-VA-002','numerator',141,'Jumlah kejadian kematian pasien rawat inap > 48 jam dalam 1 bulan','==',5,NULL,0),
(274,'B-VA-002','denumerator',141,'Jumlah seluruh pasien yang dirawat dalam1 bulan','==',5,NULL,0),
(275,'B-VA-002','numerator',142,'Jumlah pasien pulang paksa dalam 1 bulan','<=',0,NULL,0),
(276,'B-VA-002','denumerator',142,'Jumlah seluruh pasien yang dirawat dalam1 bulan','<=',0,NULL,0),
(277,'B-VA-002','numerator',143,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','<=',100,NULL,0),
(278,'B-VA-002','denumerator',143,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','<=',100,NULL,0),
(279,'B-VA-002','numerator',144,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)',' ',90,NULL,0),
(280,'B-VA-002','denumerator',144,'jumlah total pasien yang disurvey (min N=50)','==',90,NULL,0),
(281,'B-VL-001','numerator',146,'Jumlah Identifikasi yang dilakukan','==',100,NULL,0),
(282,'B-VL-001','denumerator',146,'Jumlah Seluruh peluang Identifikasi yang dilakukan','==',100,NULL,0),
(283,'B-VL-001','numerator',150,'Jumlah pasien rawat inap beresiko tinggi jatuh yang diobservasi yang mendapatkan upaya pencegahan resiko jatuh','==',100,NULL,0),
(284,'B-VL-001','denumerator',150,'Jumlah pasien rawat inap beresiko tinggi jatuh yang di Observasi','==',100,NULL,0),
(285,'B-VL-001','numerator',148,'Jumlah Assesment awal  medis yang lengkap  setelah 24 jam MRS','==',100,NULL,0),
(286,'B-VL-001','denumerator',148,'Jumlah Pasien baru dirawap inap dalam 1 bulan ','==',100,NULL,0),
(287,'B-VL-001','numerator',147,'Therapy yang diberikan melalui tehnik SBAR','==',100,NULL,0),
(288,'B-VL-001','denumerator',147,'Semua therapy yang menggunakan tehnik SBAR yang diamati','==',100,NULL,0),
(289,'B-VL-001','numerator',151,'Jumlah kejadian kematian pasien rawat inap > 48 jam dalam 1 bulan','==',5,NULL,0),
(290,'B-VL-001','numerator',151,'Jumlah seluruh pasien yang dirawat dalam1 bulan','==',5,NULL,0),
(291,'B-VL-001','numerator',152,'Jumlah pasien pulang paksa dalam 1 bulan','==',0,NULL,0),
(292,'B-VL-001','denumerator',152,'Jumlah seluruh pasien yang dirawat dalam1 bulan','==',0,NULL,0),
(293,'B-VL-001','numerator',153,'Jumlah visite dokter spesialis yang dilakukan pada jam dinas pada saat disurvey','==',100,NULL,0),
(294,'B-VL-001','denumerator',153,'Jumlah seluruh visite dokter spesialis yang dilakukan survey','==',100,NULL,0),
(295,'B-VL-001','denumerator',149,'Jumlah Kumulatif hasil penilaian kepuasan pasien yang disurvey (dalam persen)','==',100,NULL,0),
(296,'B-VL-001','denumerator',149,'Jumlah total pasien yang disurvey (min N=50)','==',100,' ',0);

/*Table structure for table `master_subnumerator` */

DROP TABLE IF EXISTS `master_subnumerator`;

CREATE TABLE `master_subnumerator` (
  `idsubnum` int(10) NOT NULL AUTO_INCREMENT,
  `unit` varchar(20) DEFAULT NULL,
  `indikator` int(10) DEFAULT NULL,
  `deskripsi` int(10) DEFAULT NULL,
  `subdeskripsi` text,
  `operator` varchar(10) DEFAULT NULL,
  `standar` int(10) DEFAULT NULL,
  `isdeletednum` int(1) DEFAULT '0',
  PRIMARY KEY (`idsubnum`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `master_subnumerator` */

insert  into `master_subnumerator`(`idsubnum`,`unit`,`indikator`,`deskripsi`,`subdeskripsi`,`operator`,`standar`,`isdeletednum`) values 
(1,'B-KB-001',7,7,'pendarahan','<',1,1),
(2,'B-KB-001',7,7,'asdasd','===',1,1),
(3,'B-KB-001',7,9,'pendarahan','<',1,1),
(4,'B-KB-001',7,7,'Perdarahan','<',1,0),
(5,'B-KB-001',51,0,'Pre eklampsia/ eklampsia','<',30,0),
(6,'B-KB-001',51,0,'Sepsis','<',0,0),
(7,'B-KB-001',51,0,'Pre eklampsia','<',30,0),
(8,'B-KB-001',51,0,'Sepsis','<',0,0);

/*Table structure for table `starkes` */

DROP TABLE IF EXISTS `starkes`;

CREATE TABLE `starkes` (
  `id_star` int(12) NOT NULL AUTO_INCREMENT,
  `tanggal_star` date DEFAULT NULL,
  `unit_star` varchar(12) DEFAULT NULL,
  `indikator` int(12) DEFAULT NULL,
  `numerator` int(12) DEFAULT NULL,
  `subnumerator` int(12) DEFAULT NULL,
  `nilai` int(12) DEFAULT NULL,
  `isdelete` int(1) DEFAULT '0',
  PRIMARY KEY (`id_star`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

/*Data for the table `starkes` */

insert  into `starkes`(`id_star`,`tanggal_star`,`unit_star`,`indikator`,`numerator`,`subnumerator`,`nilai`,`isdelete`) values 
(1,'2023-02-02','B-VL-001',146,281,0,1,1),
(2,'2023-02-02','B-VL-001',146,282,0,1,1),
(3,'2023-02-02','B-VL-001',147,287,0,1,1),
(4,'2023-02-02','B-VL-001',147,288,0,1,1),
(5,'2023-02-02','B-VL-001',148,285,0,1,1),
(6,'2023-02-02','B-VL-001',148,286,0,1,1),
(7,'2023-02-02','B-VL-001',149,295,0,1,1),
(8,'2023-02-02','B-VL-001',149,296,0,1,1),
(9,'2023-02-02','B-VL-001',150,283,0,1,1),
(10,'2023-02-02','B-VL-001',150,284,0,1,1),
(11,'2023-02-02','B-VL-001',151,289,0,1,1),
(12,'2023-02-02','B-VL-001',151,290,0,1,1),
(13,'2023-02-02','B-VL-001',152,291,0,1,1),
(14,'2023-02-02','B-VL-001',152,292,0,1,1),
(15,'2023-02-02','B-VL-001',153,293,0,1,1),
(16,'2023-02-02','B-VL-001',153,294,0,1,1),
(17,'2023-02-02','B-VL-001',146,281,0,1,1),
(18,'2023-02-02','B-VL-001',146,282,0,1,1),
(19,'2023-02-02','B-VL-001',147,287,0,1,1),
(20,'2023-02-02','B-VL-001',147,288,0,1,1),
(21,'2023-02-02','B-VL-001',148,285,0,1,1),
(22,'2023-02-02','B-VL-001',148,286,0,1,1),
(23,'2023-02-02','B-VL-001',149,295,0,1,1),
(24,'2023-02-02','B-VL-001',149,296,0,1,1),
(25,'2023-02-02','B-VL-001',150,283,0,1,1),
(26,'2023-02-02','B-VL-001',150,284,0,1,1),
(27,'2023-02-02','B-VL-001',151,289,0,1,1),
(28,'2023-02-02','B-VL-001',151,290,0,1,1),
(29,'2023-02-02','B-VL-001',152,291,0,1,1),
(30,'2023-02-02','B-VL-001',152,292,0,1,1),
(31,'2023-02-02','B-VL-001',153,293,0,1,1),
(32,'2023-02-02','B-VL-001',153,294,0,1,1),
(33,'2023-02-01','B-VL-001',146,281,0,1,0),
(34,'2023-02-01','B-VL-001',146,282,0,1,0),
(35,'2023-02-01','B-VL-001',147,287,0,1,0),
(36,'2023-02-01','B-VL-001',147,288,0,1,0),
(37,'2023-02-01','B-VL-001',148,285,0,1,0),
(38,'2023-02-01','B-VL-001',148,286,0,1,0),
(39,'2023-02-01','B-VL-001',149,295,0,1,0),
(40,'2023-02-01','B-VL-001',149,296,0,1,0),
(41,'2023-02-01','B-VL-001',150,283,0,1,0),
(42,'2023-02-01','B-VL-001',150,284,0,1,0),
(43,'2023-02-01','B-VL-001',151,289,0,1,0),
(44,'2023-02-01','B-VL-001',151,290,0,1,0),
(45,'2023-02-01','B-VL-001',152,291,0,1,0),
(46,'2023-02-01','B-VL-001',152,292,0,1,0),
(47,'2023-02-01','B-VL-001',153,293,0,1,0),
(48,'2023-02-01','B-VL-001',153,294,0,1,0),
(49,'2023-01-31','B-VL-001',146,281,0,1,1),
(50,'2023-01-31','B-VL-001',146,282,0,1,1),
(51,'2023-01-31','B-VL-001',147,287,0,1,1),
(52,'2023-01-31','B-VL-001',147,288,0,1,1),
(53,'2023-01-31','B-VL-001',148,285,0,1,1),
(54,'2023-01-31','B-VL-001',148,286,0,1,1),
(55,'2023-01-31','B-VL-001',149,295,0,1,1),
(56,'2023-01-31','B-VL-001',149,296,0,1,1),
(57,'2023-01-31','B-VL-001',150,283,0,1,1),
(58,'2023-01-31','B-VL-001',150,284,0,1,1),
(59,'2023-01-31','B-VL-001',151,289,0,1,1),
(60,'2023-01-31','B-VL-001',151,290,0,1,1),
(61,'2023-01-31','B-VL-001',152,291,0,1,1),
(62,'2023-01-31','B-VL-001',152,292,0,1,1),
(63,'2023-01-31','B-VL-001',153,293,0,1,1),
(64,'2023-01-31','B-VL-001',153,294,0,1,1),
(65,'2023-02-02','B-VL-001',146,281,0,1,1),
(66,'2023-02-02','B-VL-001',146,282,0,1,1),
(67,'2023-02-02','B-VL-001',147,287,0,1,1),
(68,'2023-02-02','B-VL-001',147,288,0,1,1),
(69,'2023-02-02','B-VL-001',148,285,0,1,1),
(70,'2023-02-02','B-VL-001',148,286,0,1,1),
(71,'2023-02-02','B-VL-001',149,295,0,1,1),
(72,'2023-02-02','B-VL-001',149,296,0,1,1),
(73,'2023-02-02','B-VL-001',150,283,0,1,1),
(74,'2023-02-02','B-VL-001',150,284,0,1,1),
(75,'2023-02-02','B-VL-001',151,289,0,1,1),
(76,'2023-02-02','B-VL-001',151,290,0,1,1),
(77,'2023-02-02','B-VL-001',152,291,0,1,1),
(78,'2023-02-02','B-VL-001',152,292,0,1,1),
(79,'2023-02-02','B-VL-001',153,293,0,1,1),
(80,'2023-02-02','B-VL-001',153,294,0,1,1),
(81,'2023-02-02','B-VL-001',146,281,0,1,1),
(82,'2023-02-02','B-VL-001',146,282,0,10,1),
(83,'2023-02-02','B-VL-001',147,287,0,1,1),
(84,'2023-02-02','B-VL-001',147,288,0,10,1),
(85,'2023-02-02','B-VL-001',148,285,0,1,1),
(86,'2023-02-02','B-VL-001',148,286,0,10,1),
(87,'2023-02-02','B-VL-001',149,295,0,1,1),
(88,'2023-02-02','B-VL-001',149,296,0,11,1),
(89,'2023-02-02','B-VL-001',150,283,0,1,1),
(90,'2023-02-02','B-VL-001',150,284,0,12,1),
(91,'2023-02-02','B-VL-001',151,289,0,1,1),
(92,'2023-02-02','B-VL-001',151,290,0,13,1),
(93,'2023-02-02','B-VL-001',152,291,0,1,1),
(94,'2023-02-02','B-VL-001',152,292,0,14,1),
(95,'2023-02-02','B-VL-001',153,293,0,1,1),
(96,'2023-02-02','B-VL-001',153,294,0,16,1),
(97,'2023-02-02','B-VL-001',146,281,0,2,0),
(98,'2023-02-02','B-VL-001',146,282,0,1,0),
(99,'2023-02-02','B-VL-001',147,287,0,1,0),
(100,'2023-02-02','B-VL-001',147,288,0,1,0),
(101,'2023-02-02','B-VL-001',148,285,0,1,0),
(102,'2023-02-02','B-VL-001',148,286,0,1,0),
(103,'2023-02-02','B-VL-001',149,295,0,1,0),
(104,'2023-02-02','B-VL-001',149,296,0,1,0),
(105,'2023-02-02','B-VL-001',150,283,0,1,0),
(106,'2023-02-02','B-VL-001',150,284,0,1,0),
(107,'2023-02-02','B-VL-001',151,289,0,1,0),
(108,'2023-02-02','B-VL-001',151,290,0,1,0),
(109,'2023-02-02','B-VL-001',152,291,0,1,0),
(110,'2023-02-02','B-VL-001',152,292,0,1,0),
(111,'2023-02-02','B-VL-001',153,293,0,1,0),
(112,'2023-02-02','B-VL-001',153,294,0,1,0),
(113,'2023-01-31','B-VL-001',146,281,0,1,0),
(114,'2023-01-31','B-VL-001',146,282,0,1,0),
(115,'2023-01-31','B-VL-001',147,287,0,1,0),
(116,'2023-01-31','B-VL-001',147,288,0,1,0),
(117,'2023-01-31','B-VL-001',148,285,0,1,0),
(118,'2023-01-31','B-VL-001',148,286,0,1,0),
(119,'2023-01-31','B-VL-001',149,295,0,1,0),
(120,'2023-01-31','B-VL-001',149,296,0,1,0),
(121,'2023-01-31','B-VL-001',150,283,0,1,0),
(122,'2023-01-31','B-VL-001',150,284,0,1,0),
(123,'2023-01-31','B-VL-001',151,289,0,1,0),
(124,'2023-01-31','B-VL-001',151,290,0,1,0),
(125,'2023-01-31','B-VL-001',152,291,0,1,0),
(126,'2023-01-31','B-VL-001',152,292,0,1,0),
(127,'2023-01-31','B-VL-001',153,293,0,1,0),
(128,'2023-01-31','B-VL-001',153,294,0,1,0);

/*Table structure for table `temp_bidang` */

DROP TABLE IF EXISTS `temp_bidang`;

CREATE TABLE `temp_bidang` (
  `tb_id` varchar(20) NOT NULL,
  `tb_nama` varchar(100) NOT NULL,
  `tb_syarat` varchar(10) NOT NULL,
  `tb_kodeunit` varchar(6) NOT NULL,
  `tb_dashboard` varchar(20) NOT NULL,
  `tb_isactive` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tb_id`),
  KEY `fk_syarat` (`tb_syarat`),
  CONSTRAINT `fk_syarat` FOREIGN KEY (`tb_syarat`) REFERENCES `temp_posisi` (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp_bidang` */

insert  into `temp_bidang`(`tb_id`,`tb_nama`,`tb_syarat`,`tb_kodeunit`,`tb_dashboard`,`tb_isactive`) values 
('B-A-001','Akuntansi','P-SB-001','5.3','8','1'),
('B-BS-001','Bedah Sentral','P-I-001','9.5','8','1'),
('B-C-001','CSSD','P-I-001','9.14','8','1'),
('B-C-002','CATHLAB','P-U-001','2','8','1'),
('B-D-001','RSUD','P-D-001','A','8','1'),
('B-DDP-001','Diklat Dan Penelitian','P-I-001','9.23','8','1'),
('B-F-001','Farmasi','P-I-001','9.10','8','1'),
('B-G-001','Gizi','P-I-001','9.12','8','1'),
('B-GD-001','Gawat Darurat','P-I-001','9.1','8','1'),
('B-H-001','HEMODIALISA','P-U-001','1','8','1'),
('B-HDPP-001','Hubungan Dan Protokol, Pemasaran Dan Kemitraan','P-B-002','8','8','1'),
('B-HMDP-001','Hubungan Masyarakat Dan Protokol, Pemasaran Dan Kemitraan','P-B-001','8','8','1'),
('B-IDRJ-001','Pelayanan dan Pengembangan Asuhan dan Profesi Keperawatan','P-S-001','2.1','8','1'),
('B-IID-001','ICU/RAWAT INTSENSIVE DEWASA','P-U-001','3','8','1'),
('B-JT-001','Jantung Terpadu','P-I-001','9.8','8','1'),
('B-K-001','Pelayanan Keperawatan','P-B-001','2','8','1'),
('B-K-002','Keuangan','P-B-002','5','8','1'),
('B-K-003','Kemitraan','P-SB-001','8.3','8','1'),
('B-KA-001','Anak','P-K-002','-','8','1'),
('B-KA-002','Anestesi','P-K-002','-','8','1'),
('B-KB-001','Kamar Bersalin','P-I-001','9.4','8','1'),
('B-KB-002','Bedah','P-K-002','-','8','1'),
('B-KBTK-001','Bedah Torak Kardiovaskular','P-K-002','-','8','1'),
('B-KDPB-001','Hubungan Masyarakat dan Protokol','P-SB-001','8.1','8','1'),
('B-KERS-001','Komite Etik Rumah Sakit','P-K-001','12','8','1'),
('B-KFDT-001','Komite Farmasi Dan Terapi','P-K-001','13','8','1'),
('B-KGDM-001','Gigi Dan Mulut','P-K-002','-','8','1'),
('B-KJ-001','Kamar Jenazah','P-I-001','9.7','8','1'),
('B-KK-001','Komite Keperawatan','P-K-001','11','8','1'),
('B-KKDK-001','Kulit Dan Kelamin','P-K-002','-','8','1'),
('B-KKKK-001','Komite Keamanan, Keselamatan dan Kesehatan Kerja Rumah Sakit (K3RS)','P-K-001','14','8','1'),
('B-KM-001','Komite Medik','P-K-001','10','8','1'),
('B-KM-002','Mata','P-K-002','-','8','1'),
('B-KNL-001','Komite Tenaga Kesehatan Lainya','P-K-001','17','8','1'),
('B-KO-001','Obgyn','P-K-002','-','8','1'),
('B-KODT-001','Orthopedi Dan Traumatologi','P-K-002','-','8','1'),
('B-KP-001','Psikiatri','P-K-002','-','8','1'),
('B-KPD-001','Penyakit Dalam','P-K-002','-','8','1'),
('B-KPDP-001','Pencegahan Dan Pengendalian Infeksi (PPI)','P-K-001','','8','1'),
('B-KPM-001','Penunjang Medik','P-K-002','-','8','1'),
('B-KPMD-001','Komite Peningkatan Mutu Dan Keselamatan Pasien (PMKP)','P-K-001','16','8','1'),
('B-KPPR-001','Komite Program Pencegahan Resistensi Anti Mikroba (PPRA)','P-K-001','18','8','1'),
('B-KR-001','Radiologi','P-K-002','-','8','1'),
('B-KRM-001','Komite Rekam Medik','P-K-001','19','8','1'),
('B-KRM-002','Rehabilitasi Medik','P-K-002','-','8','1'),
('B-KRS(-001','Keamanan Rumah Sakit (HST)','P-I-001','9.22','8','1'),
('B-KS-001','Saraf','P-K-002','-','8','1'),
('B-KT-001','THT','P-K-002','-','8','1'),
('B-KU-001','Umum','P-K-002','-','8','1'),
('B-L-001','Laundry','P-I-001','9.20','8','1'),
('B-L-002','Laboratorium','P-I-001','9.9','8','1'),
('B-M-001','MCU','P-I-001','9.15','8','1'),
('B-MDEP-001','Monitoring Dan Evaluasi Penunjang Medik','P-S-001','3.2','8','1'),
('B-P-001','Promosi Kesehatan Rumah Sakit (PKRS)','P-I-001','9.24','8','1'),
('B-P-002','Perinatologi','P-I-001','9.25','8','1'),
('B-PB-001','Pemasaran','P-SB-001','8.2','8','1'),
('B-PBMD-001','Pengelolaan Barang Milik Daerah','P-B-002','6','8','1'),
('B-PBMD-002','Perencanaan Barang Milik Daerah','P-SB-001','6.1','8','1'),
('B-PBMD-003','Penatausahaan Barang Milik Daerah','P-SB-001','6.2','8','1'),
('B-PBMD-004','Pengendalian Barang Milik Daerah','P-SB-001','6.3','8','1'),
('B-PBMD-005','Pengelolaan Barang Milik Daerah','P-B-001','','8','1'),
('B-PBMD-006','Penatausahaan Barang Milik Daerah','P-SB-001','6.2','8','1'),
('B-PDA-001','Perencanaan dan Anggaran','P-SB-001','5.1','8','1'),
('B-PDMD-001','Perbendaharaan Dan Mobilisasi Dana','P-SB-001','5.2','8','1'),
('B-PDP-001','Pendidikan Dan Penelitian','P-SB-001','7.3','8','1'),
('B-PDPM-001','Pelayanan Dan Pengembangan Medik','P-B-001','1','8','1'),
('B-PIA-001','PICU/RAWAT INTSENSIVE ANAK','P-U-001','4','8','1'),
('B-PKSD-001','Peningkatan Kompetensi Sumber Daya Manusia','P-SB-001','7.2','8','1'),
('B-PLDS-001','Pengolahan Limbah Dan Sanitasi (IPLS)','P-I-001','9.19','8','1'),
('B-PM-001','Pelayanan dan Pengembangan Medik','P-S-001','1.1','8','1'),
('B-PM-002','Pelayanan dan Pengembangan Penunjang Medik','P-S-001','3.1','8','1'),
('B-PMDK-001','Medik Dan Keperawatan','P-WD-001','A.1','8','1'),
('B-PPAT-001','Pusat Pelayanan Administrasi Terpadu Rumah Sakit (PPAT-RS)','P-I-001','9.16','8','1'),
('B-PPM-001','Pelayanan Penunjang Medik','P-B-001','3','8','1'),
('B-PSDM-001','Pengelolaan Sumber Daya Manusia','P-SB-001','7.1','4','1'),
('B-PSRS-001','Pemeliharaan Sarana Rumah Sakit (IPSRS)','P-I-001','9.21','8','1'),
('B-R-001','Radiologi','P-I-001','9.13','8','1'),
('B-RI-001','Monitoring dan Evaluasi Pelayanan Medik','P-S-001','1.2','8','1'),
('B-RI-002','Rawat Inap','P-I-001','9.3','8','1'),
('B-RI-003','Rawat Intensif','P-I-001','9.6','8','1'),
('B-RJ-001','Rawat Jalan','P-I-001','9.2','8','1'),
('B-RK-001','Monitoring dan Evaluasi Asuhan dan Profesi Keperawatan','P-S-001','2.2','8','1'),
('B-RM-001','Rekam Medik Dan SIMRS','P-SB-001','4.3','8','1'),
('B-RM-002','Rehab Medik','P-I-001','9.11','8','1'),
('B-RM-003','Rekam Medik','P-I-001','9.17','8','1'),
('B-RTDP-001','Rumah Tangga','P-SB-001','4.2','8','1'),
('B-SDMD-001','SDM, Humas dan Protokol, Pemasaran dan Kemitraan','P-WD-001','A.3','8','1'),
('B-SDMD-002','Sumber Daya Manusia','P-B-002','7','4','1'),
('B-SI-001','Sistem Informasi','P-I-001','9.18','1','1'),
('B-SPI(-001','Satuan Pengawas Internal (SPI)','P-K-001','B','8','1'),
('B-TUHD-001','Tata Usaha dan Hukum','P-SB-001','4.1','8','1'),
('B-U-001','Umum','P-B-002','4','8','1'),
('B-UDK-001','Umum, Keuangan dan Pengelolaan Barang Milik Daerah','P-WD-001','A.2','8','1'),
('B-V-001','VAP.CEMARA','P-U-001','5','8','1'),
('B-V-002','VAP.MERANTI','P-U-001','7','8','1'),
('B-VA-001','VAP AKASIA','P-U-001','6','8','1'),
('B-VA-002','VAP. AZZAHRA','P-U-001','9','8','1'),
('B-VC-001','VAP. CENDANA','P-U-001','8','8','1'),
('B-VL-001','VAP. LEANPURI','P-U-001','10','8','1');

/*Table structure for table `temp_posisi` */

DROP TABLE IF EXISTS `temp_posisi`;

CREATE TABLE `temp_posisi` (
  `tp_id` varchar(10) NOT NULL,
  `tp_nama` varchar(64) NOT NULL,
  `tp_prioritas` int(11) NOT NULL,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp_posisi` */

insert  into `temp_posisi`(`tp_id`,`tp_nama`,`tp_prioritas`) values 
('P-B-001','Bidang',2),
('P-B-002','Bagian',2),
('P-D-001','Direktur',0),
('P-F-001','Fungsional',4),
('P-I-001','Instalasi',4),
('P-K-001','Komite',0),
('P-K-002','KSM',1),
('P-S-001','Seksi',3),
('P-SB-001','Sub Bagian',3),
('P-U-001','Unit',5),
('P-WD-001','Wakil Direktur',1);

/*Table structure for table `unit` */

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `nama_unit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `unit` */

insert  into `unit`(`id`,`nama_unit`) values 
(1,'IKB');

/*Table structure for table `view_numerator` */

DROP TABLE IF EXISTS `view_numerator`;

/*!50001 DROP VIEW IF EXISTS `view_numerator` */;
/*!50001 DROP TABLE IF EXISTS `view_numerator` */;

/*!50001 CREATE TABLE  `view_numerator`(
 `idnum` int(10) ,
 `kodeunit` varchar(20) ,
 `unit` varchar(165) ,
 `jenis` varchar(20) ,
 `kdindikator` int(10) ,
 `indikator` text ,
 `deskripsi` text ,
 `standar` int(10) ,
 `operator` varchar(10) ,
 `mutu_rs` varchar(10) ,
 `isdeletednum` int(1) 
)*/;

/*Table structure for table `view_starkes` */

DROP TABLE IF EXISTS `view_starkes`;

/*!50001 DROP VIEW IF EXISTS `view_starkes` */;
/*!50001 DROP TABLE IF EXISTS `view_starkes` */;

/*!50001 CREATE TABLE  `view_starkes`(
 `id_star` int(12) ,
 `tanggal_star` date ,
 `unit_id` varchar(12) ,
 `unit` varchar(165) ,
 `indikator` int(12) ,
 `indikator_desc` text ,
 `numerator` int(12) ,
 `numerator_desc` text ,
 `jenis` varchar(20) ,
 `subnumerator` int(12) ,
 `nilai` int(12) ,
 `isdelete` int(1) 
)*/;

/*Table structure for table `view_subnumerator` */

DROP TABLE IF EXISTS `view_subnumerator`;

/*!50001 DROP VIEW IF EXISTS `view_subnumerator` */;
/*!50001 DROP TABLE IF EXISTS `view_subnumerator` */;

/*!50001 CREATE TABLE  `view_subnumerator`(
 `idsubnum` int(10) ,
 `kodeunit` varchar(20) ,
 `unit` varchar(165) ,
 `kdindikator` int(10) ,
 `indikator` text ,
 `kddeskripsi` int(10) ,
 `deskripsi` text ,
 `subdeskripsi` text ,
 `jenis` varchar(20) ,
 `operator` varchar(10) ,
 `standar` int(10) ,
 `isdeletednum` int(1) 
)*/;

/*Table structure for table `view_temp_bidang` */

DROP TABLE IF EXISTS `view_temp_bidang`;

/*!50001 DROP VIEW IF EXISTS `view_temp_bidang` */;
/*!50001 DROP TABLE IF EXISTS `view_temp_bidang` */;

/*!50001 CREATE TABLE  `view_temp_bidang`(
 `tb_id` varchar(20) ,
 `tb_nama` varchar(100) ,
 `tb_syarat` varchar(10) ,
 `tb_kodeunit` varchar(6) ,
 `tb_isactive` varchar(1) ,
 `tb_dashboard` varchar(20) ,
 `tb_nama_syarat` varchar(64) 
)*/;

/*View structure for view view_numerator */

/*!50001 DROP TABLE IF EXISTS `view_numerator` */;
/*!50001 DROP VIEW IF EXISTS `view_numerator` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_numerator` AS (select `master_numerator`.`idnum` AS `idnum`,`master_numerator`.`unit` AS `kodeunit`,concat(`view_temp_bidang`.`tb_nama_syarat`,' ',`view_temp_bidang`.`tb_nama`) AS `unit`,`master_numerator`.`jenis` AS `jenis`,`master_indikator`.`id` AS `kdindikator`,`master_indikator`.`judul` AS `indikator`,`master_numerator`.`deskripsi` AS `deskripsi`,`master_numerator`.`standar` AS `standar`,`master_numerator`.`operator` AS `operator`,`master_numerator`.`mutu_rs` AS `mutu_rs`,`master_numerator`.`isdeletednum` AS `isdeletednum` from ((`master_numerator` join `view_temp_bidang` on((`master_numerator`.`unit` = `view_temp_bidang`.`tb_id`))) join `master_indikator` on((`master_numerator`.`indikator` = `master_indikator`.`id`)))) */;

/*View structure for view view_starkes */

/*!50001 DROP TABLE IF EXISTS `view_starkes` */;
/*!50001 DROP VIEW IF EXISTS `view_starkes` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_starkes` AS (select `starkes`.`id_star` AS `id_star`,`starkes`.`tanggal_star` AS `tanggal_star`,`starkes`.`unit_star` AS `unit_id`,concat(`view_temp_bidang`.`tb_nama_syarat`,' ',`view_temp_bidang`.`tb_nama`) AS `unit`,`starkes`.`indikator` AS `indikator`,`master_indikator`.`judul` AS `indikator_desc`,`starkes`.`numerator` AS `numerator`,`master_numerator`.`deskripsi` AS `numerator_desc`,`master_numerator`.`jenis` AS `jenis`,`starkes`.`subnumerator` AS `subnumerator`,`starkes`.`nilai` AS `nilai`,`starkes`.`isdelete` AS `isdelete` from (((`starkes` join `view_temp_bidang` on((`starkes`.`unit_star` = `view_temp_bidang`.`tb_id`))) join `master_indikator` on((`starkes`.`indikator` = `master_indikator`.`id`))) join `master_numerator` on((`starkes`.`numerator` = `master_numerator`.`idnum`)))) */;

/*View structure for view view_subnumerator */

/*!50001 DROP TABLE IF EXISTS `view_subnumerator` */;
/*!50001 DROP VIEW IF EXISTS `view_subnumerator` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_subnumerator` AS (select `master_subnumerator`.`idsubnum` AS `idsubnum`,`master_subnumerator`.`unit` AS `kodeunit`,concat(`view_temp_bidang`.`tb_nama_syarat`,' ',`view_temp_bidang`.`tb_nama`) AS `unit`,`master_indikator`.`id` AS `kdindikator`,`master_indikator`.`judul` AS `indikator`,`master_subnumerator`.`deskripsi` AS `kddeskripsi`,`master_numerator`.`deskripsi` AS `deskripsi`,`master_subnumerator`.`subdeskripsi` AS `subdeskripsi`,`master_numerator`.`jenis` AS `jenis`,`master_subnumerator`.`operator` AS `operator`,`master_subnumerator`.`standar` AS `standar`,`master_subnumerator`.`isdeletednum` AS `isdeletednum` from (((`master_subnumerator` join `view_temp_bidang` on((`master_subnumerator`.`unit` = `view_temp_bidang`.`tb_id`))) join `master_indikator` on((`master_subnumerator`.`indikator` = `master_indikator`.`id`))) join `master_numerator` on((`master_subnumerator`.`deskripsi` = `master_numerator`.`idnum`)))) */;

/*View structure for view view_temp_bidang */

/*!50001 DROP TABLE IF EXISTS `view_temp_bidang` */;
/*!50001 DROP VIEW IF EXISTS `view_temp_bidang` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_temp_bidang` AS (select `temp_bidang`.`tb_id` AS `tb_id`,`temp_bidang`.`tb_nama` AS `tb_nama`,`temp_bidang`.`tb_syarat` AS `tb_syarat`,`temp_bidang`.`tb_kodeunit` AS `tb_kodeunit`,`temp_bidang`.`tb_isactive` AS `tb_isactive`,`temp_bidang`.`tb_dashboard` AS `tb_dashboard`,`temp_posisi`.`tp_nama` AS `tb_nama_syarat` from (`temp_bidang` join `temp_posisi` on((`temp_posisi`.`tp_id` = `temp_bidang`.`tb_syarat`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
