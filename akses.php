<?php
session_start();
	$username = $_POST['username'];
	$password = md5($_POST['password']);

	include('koneksi.php');
	$query = "SELECT a.id as id_user,a.username,a.name,a.id_area,b.nama_area,b.alamat from user as a LEFT JOIN area as b on a.id_area=b.id_area where a.username='$username' AND a.password='$password' ";
	$login = mysqli_query($konek,$query);
	$ketemu = mysqli_num_rows($login);
	$data = mysqli_fetch_array($login);
 
	if ($ketemu > 0 ) {
	$_SESSION['errorlogin'] = false;
	$_SESSION['id_user'] = $data['id_user'];
	$_SESSION['username'] = $data['username'];
	$_SESSION['name'] = $data['name'];
	$_SESSION['nama_area'] = $data['nama_area'];
	$_SESSION['id_area'] = $data['id_area'];
	$_SESSION['alamat'] = $data['alamat'];
    header('Location: index.php?dashboard');
	} else {
		$_SESSION['errorlogin'] = true;
    	header('Location: login.php');
	}
?>