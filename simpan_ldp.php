<?php
session_start();
require "koneksi.php";

$status_param = array();
//main LDP
$id_area = $_SESSION['id_area'];
$id_user = $_SESSION['id_user'];
$tanggal_pembuatan = date("Y-m-d", strtotime($_POST['tanggal_pembuatan']) );
$no_rangka = $_POST['no_rangka'];
$model = $_POST['model_mesin'];
$no_mesin = $_POST['no_mesin'];
$tipe_mesin = $_POST['tipe_mesin'];
$part_penyebab = $_POST['part_penyebab'];
$part_lokasi = $_POST['part_lokasi'];
$problem = $_POST['problem'];

isset($stat_kirim) ? $stat_kirim = $_POST['stat_kirim'] : $stat_kirim = FALSE;

$km = $_POST['km'];
$tanggal_penyerahan = date("Y-m-d", strtotime($_POST['tanggal_penyerahan']) );
$tanggal_perbaikan = date("Y-m-d", strtotime($_POST['tanggal_perbaikan']) );
$queryLDP = "INSERT INTO  `ldp`
              (`id_area`, `id_user`, `tanggal_pembuatan`, `no_rangka`, `model`, `no_mesin`, `no_type`,
              `part_penyebab`, `part_lokasi`, `problem`, `status_kirim`, `km`, `tanggal_penyerahan`, `tanggal_perbaikan`)
              VALUES ('$id_area','$id_user','$tanggal_pembuatan','$no_rangka','$model','$no_mesin','$tipe_mesin','$part_penyebab',
              '$part_lokasi','$problem','$stat_kirim',$km,'$tanggal_penyerahan','$tanggal_perbaikan')";
if(mysqli_query($konek,$queryLDP)){
    $id_ldp=mysqli_insert_id($konek);
    $status_param['ldp'] = TRUE;
} else {
    $status_param['ldp'] = FALSE;
    exit;
}
//kondisi_kendaraan

$kondisi_jalan = $_POST['kondisi_jalan'];
$kondisi_kendaraan = implode(',',$_POST['kondisi_kendaraan']);
$kecepatan_kendaraan = $_POST['kecepatan_kendaraan'];
$posisi_gigi = $_POST['posisi_gigi'];
$t1 = $_POST['t1'];
$t2 = $_POST['t2'];
$queryKondisiKendaraan = "INSERT INTO `ldp_kondisi_kendaraan`(`id_ldp`, `kondisi_jalan`, `kondisi_kendaraan`,`kecepatan_kendaraan`,
              `posisi_gigi`, `t1`, `t2`) VALUES ('$id_ldp','$kondisi_jalan','$kondisi_kendaraan','$kecepatan_kendaraan','$posisi_gigi','$t1','$t2')";
if(mysqli_query($konek,$queryKondisiKendaraan)){
    $status_param['kondisi_kendaraan'] = TRUE;
} else {
    $status_param['kondisi_kendaraan'] = FALSE;
}

//kondisi kerusakan
$customer_complaint = $_POST['customer_complaint'];
$detail_kerusakan = $_POST['detail_kerusakan'];
$kemungkinan_penyebab = $_POST['kemungkinan_penyebab'];
$queryKondisiKerusakan= "INSERT INTO `ldp_kerusakan`(`id_ldp`, `customer_complaint`, `detail_kerusakan`, `kemungkinan_penyebab`) VALUES
              ('$id_ldp','$customer_complaint','$detail_kerusakan','$kemungkinan_penyebab')";
if(mysqli_query($konek,$queryKondisiKerusakan)){
    $status_param['kondisi_kerusakan'] = TRUE;
} else {
    $status_param['kondisi_kerusakan'] = FALSE;
}

//kondisi perbaikan

$prioritas = $_POST['prioritas'];
$perbaikan_dilakukan = $_POST['perbaikan_dilakukan'];
$komentar_bengkel = $_POST['komentar_bengkel'];
$queryKondisiPerbaikan = "INSERT INTO `ldp_perbaikan`(`id_ldp`, `prioritas`, `perbaikan_tindakan`,`komentar_bengkel`) VALUES
              ('$id_ldp','$prioritas','$perbaikan_dilakukan','$komentar_bengkel')";
if(mysqli_query($konek,$queryKondisiPerbaikan)){
    $status_param['kondisi_perbaikan'] = TRUE;
} else {
    $status_param['kondisi_perbaikan'] = FALSE;
}

//Lain-Lain
$permintaan_perbaikan = implode(',',$_POST['permintaan_perbaikan']);
$pengaruh_terhadap_market = implode(',',$_POST['pengaruh_terhadap_market']);
$permintaan_konkret = implode(',',$_POST['permintaan_konkret']);
$queryDetail = "INSERT INTO `ldp_detail`(`id_ldp`, `permintaan_perbaikan`, `pengaruh_market`, `permintaan_konkret`) VALUES
              ('$id_ldp','$permintaan_perbaikan','$pengaruh_terhadap_market','$permintaan_konkret')";
if(mysqli_query($konek,$queryDetail)){
    $status_param['infoDetail'] = TRUE;
} else {
    $status_param['infoDetail'] = FALSE;
}

//
//echo "<pre>";
//print_r($_POST);
//echo "<hr />";
//print_r($kondisi_kendaraan);
//echo "<hr />";
//
//print_r($permintaan_perbaikan);
//echo "<hr />";
//
//print_r($pengaruh_terhadap_market);
//echo "<hr />";
//
//print_r($permintaan_konkret);
//echo "<hr />";
//
//print_r($id_ldp);
//echo "<hr />";
//
//echo $queryLDP;
//echo "<hr />";
//print_r($status_param);
//echo "</pre>";

//foreach($status_param as $key => $value){
//
//}
header("Location: ./index.php?hal=ldp_create");
die();