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

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `indikator_id` int(11) DEFAULT NULL,
  `n_judul` int(11) DEFAULT NULL,
  `n_num` int(11) DEFAULT NULL,
  `n_denum` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_id_UNIQUE` (`unit_id`),
  UNIQUE KEY `indikator_id_UNIQUE` (`indikator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `data` */

insert  into `data`(`id`,`unit_id`,`indikator_id`,`n_judul`,`n_num`,`n_denum`,`tanggal`) values 
(1,1,1,5,5,5,'2022-12-20');

/*Table structure for table `indikator` */

DROP TABLE IF EXISTS `indikator`;

CREATE TABLE `indikator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) DEFAULT NULL,
  `standar` varchar(45) DEFAULT NULL,
  `pencapaian` int(11) DEFAULT NULL,
  `ket` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id_UNIQUE` (`unit_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `indikator` */

insert  into `indikator`(`id`,`unit_id`,`standar`,`pencapaian`,`ket`) values 
(1,1,'<1% <30% <0,3%',100,'Oke'),
(2,1,'<1% <30% <0,3%',100,'Oke'),
(4,1,'<1% <30% <0,3%',100,'Oke'),
(5,1,'200',0,''),
(6,1,'100',0,''),
(7,1,'100',0,'');

/*Table structure for table `indikator_unit` */

DROP TABLE IF EXISTS `indikator_unit`;

CREATE TABLE `indikator_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indikator_id` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `numerator` varchar(255) DEFAULT NULL,
  `denumerator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `indikator_id_UNIQUE` (`indikator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `indikator_unit` */

insert  into `indikator_unit`(`id`,`indikator_id`,`judul`,`numerator`,`denumerator`) values 
(1,1,'Kejadian kematian ibu karena persalinan : Perdarahan','Jumlah kematian pasien persalinan karena : Perdarahan','Jumlah pasien-pasien persalinan dengan : Perdarahan'),
(2,2,'Kejadian kematian ibu karena persalinan : Pre eklampsia','Jumlah kematian pasien persalinan karena :Pre eklampsia','Jumlah pasien-pasien persalinan dengan : Pre eklampsia'),
(3,4,'Kejadian kematian ibu karena persalinan : Sepsis','Jumlah kematian pasien persalinan karena : Sepsis','Jumlah pasien-pasien persalinan dengan : Sepsis'),
(4,5,'Pemberi pelayanan dengan persalinan normal dokter SpOG dan bidan sudah terlatih APN','Jumlah pasien kamar bersalin dengan persalinan normal yang di tangani tenaga dokter SpOG,dan bidan terlatih     ( Asuhan Persalinan Normal ) yang di survei','Jumlah pasien persalinan normal dikamar bersalin yang disurvei'),
(5,6,'\"Pemberi pelayanan persalinan dengan penyulit dr. Sp.OG,  dr Sp.A dan bidan terlatih\"','Jumlah pasien persalinan dengan penyulit dikamar bersalin yang ditangani tenaga dokter Sp.OG,bidan yang terlatih','Jumlah pasien persalinan dengan penyulit dikamar bersalin yang disurvei');

/*Table structure for table `master_indikator` */

DROP TABLE IF EXISTS `master_indikator`;

CREATE TABLE `master_indikator` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `judul` text,
  `unit` varchar(30) DEFAULT NULL,
  `isdeleted` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `master_indikator` */

insert  into `master_indikator`(`id`,`judul`,`unit`,`isdeleted`) values 
(1,'Waktu Tunggu Rawat Inap < 6 jam','B-GD-001',0),
(2,'Kepatuhan Identifikasi Pasien','B-GD-001',0),
(3,'Kejadian kematian Ibu krn Eklampsi/Preeklampsi','B-GD-001',0),
(4,'Kepuasan pasien (pelanggan) terhadap pelayanan IGD','B-GD-001',0),
(5,'kepatuhan pencegahan pasien jatuh','B-GD-001',0);

/*Table structure for table `master_numerator` */

DROP TABLE IF EXISTS `master_numerator`;

CREATE TABLE `master_numerator` (
  `idnum` int(10) NOT NULL AUTO_INCREMENT,
  `unit` varchar(10) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `indikator` int(10) DEFAULT NULL,
  `deskripsi` text,
  `standar` int(10) DEFAULT NULL,
  PRIMARY KEY (`idnum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `master_numerator` */

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
('B-D-001','RSUD','P-D-001','A','8','1'),
('B-DDP-001','Diklat Dan Penelitian','P-I-001','9.23','8','1'),
('B-F-001','Farmasi','P-I-001','9.10','8','1'),
('B-G-001','Gizi','P-I-001','9.12','8','1'),
('B-GD-001','Gawat Darurat','P-I-001','9.1','8','1'),
('B-HDPP-001','Hubungan Dan Protokol, Pemasaran Dan Kemitraan','P-B-002','8','8','1'),
('B-HMDP-001','Hubungan Masyarakat Dan Protokol, Pemasaran Dan Kemitraan','P-B-001','8','8','1'),
('B-IDRJ-001','Pelayanan dan Pengembangan Asuhan dan Profesi Keperawatan','P-S-001','2.1','8','1'),
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
('B-UDK-001','Umum, Keuangan dan Pengelolaan Barang Milik Daerah','P-WD-001','A.2','8','1');

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

/*View structure for view view_temp_bidang */

/*!50001 DROP TABLE IF EXISTS `view_temp_bidang` */;
/*!50001 DROP VIEW IF EXISTS `view_temp_bidang` */;

/*!50001 CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `view_temp_bidang` AS (select `temp_bidang`.`tb_id` AS `tb_id`,`temp_bidang`.`tb_nama` AS `tb_nama`,`temp_bidang`.`tb_syarat` AS `tb_syarat`,`temp_bidang`.`tb_kodeunit` AS `tb_kodeunit`,`temp_bidang`.`tb_isactive` AS `tb_isactive`,`temp_bidang`.`tb_dashboard` AS `tb_dashboard`,`temp_posisi`.`tp_nama` AS `tb_nama_syarat` from (`temp_bidang` join `temp_posisi` on((`temp_posisi`.`tp_id` = `temp_bidang`.`tb_syarat`)))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
