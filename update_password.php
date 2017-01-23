<?php
session_start();
require "koneksi.php";

if ($_POST['newpass']) {
  $id_user = $_SESSION['id_user'];
  if ($id_user) {
    $newpass= md5($_POST['newpass']);
    $queryUpdate = "UPDATE `user` SET `password`='$newpass' where id='$id_user'";
    if (mysqli_query($konek,$queryUpdate)) {
      echo "<script type='text/javascript'>alert('Password Berhasil Diubah');</script>";
      echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah-saran';</script>";
    } else {
      echo "<script type='text/javascript'>alert('Terdapat Kesalahan');</script>";
      echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah-saran';</script>";
    }
  } else {
      echo "<script type='text/javascript'>alert('Terdapat Kesalahan');</script>";
      echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah-saran';</script>";
  }
} else {
    echo "<script type='text/javascript'>alert('Terdapat Kesalahan');</script>";
    echo "<script type='text/javascript'>document.location.href = './index.php?hal=tambah-saran';</script>";
}
?>
