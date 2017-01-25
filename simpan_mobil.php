<?php
require "koneksi.php";
$model_code = $_POST['model_code'];
$model_name = $_POST['model_name'];
$query = "INSERT INTO master_mobil (model_code,model_name) VALUES ('$model_code','$model_name')";
if (mysqli_query($konek,$query)) {
  echo "<script type='text/javascript'>alert('Data Berhasil Ditambahkan');</script>";
  echo "<script type='text/javascript'>document.location.href = './index.php?hal=master_model';</script>";
} else {
  echo "<script type='text/javascript'>alert('Terjadi Kesalahan Saat Input Data');</script>";
  echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah_master_model';</script>";
}
