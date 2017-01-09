<?php

//main LDP
$id_area = $_SESSION['id_area'];
$id_user = $_SESSION['id_user'];
$tanggal_pembuatan = $_POST['tanggal_pembuatan'];
$no_rangka = $_POST['no_rangka'];
$model = $_POST['model_mesin'];
$no_mesin = $_POST['no_mesin'];
$tipe_mesin = $_POST['tipe_mesin'];
$part_penyebab = $_POST['part_penyebab'];
$part_lokasi = $_POST['part_lokasi'];
$problem = $_POST['problem'];

isset($stat_kirim) ? $stat_kirim = $_POST['stat_kirim'] : '';

$km = $_POST['km'];
$tanggal_penyerahan = $_POST['tanggal_penyerahan'];
$tanggal_perbaikan = $_POST['tanggal_perbaikan'];


$id_ldp="";
//kondisi_kendaraan

$tanggal_perbaikan = $_POST['tanggal_perbaikan'];
$kondisi_kendaraan = implode(',',$_POST['kondisi_kendaraan']);
$kecepatan_kendaraan = $_POST['kecepatan_kendaraan'];
$posisi_gigi = $_POST['posisi_gigi'];
$t1 = $_POST['t1'];
$t2 = $_POST['t2'];

//kondisi kerusakan
$customer_complaint = $_POST['customer_complaint'];
$detail_kerusakan = $_POST['detail_kerusakan'];
$kemungkinan_penyebab = $_POST['kemungkinan_penyebab'];

//kondisi perbaikan

$prioritas = $_POST['prioritas'];
$perbaikan_dilakukan = $_POST['perbaikan_dilakukan'];
$komentar_bengkel = $_POST['komentar_bengkel'];

//Lain-Lain
$permintaan_perbaikan = implode(',',$_POST['permintaan_perbaikan']);
$pengaruh_terhadap_market = implode(',',$_POST['pengaruh_terhadap_market']);
$permintaan_konkret = implode(',',$_POST['permintaan_konkret']);



echo "<pre>";
print_r($_POST);
echo "<hr />";
print_r($kondisi_kendaraan);
echo "<hr />";

print_r($permintaan_perbaikan);
echo "<hr />";

print_r($pengaruh_terhadap_market);
echo "<hr />";

print_r($permintaan_konkret);
echo "</pre>";
