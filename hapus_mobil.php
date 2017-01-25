<?php
require "koneksi.php";
$id = $_GET['id'];
$query = "DELETE FROM `master_mobil` WHERE `master_mobil`.`model_code` = '$id'";
if (mysqli_query($konek,$query)) {
  echo "<script type='text/javascript'>alert('Data Berhasil Dihapus');</script>";
  echo "<script type='text/javascript'>document.location.href = './index.php?hal=master_model';</script>";
} else {
  echo "<script type='text/javascript'>alert('Terjadi Kesalahan Saat Hapus Data');</script>";
  // echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah_master_model';</script>";
}
?>
