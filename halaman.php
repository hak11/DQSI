<?php
include "koneksi.php";

if (isset($_GET['hal'])) {
	$halaman = $_GET['hal'];
} else {
	$halaman = 'ajh-hak11';
}

switch ($halaman) {
	case 'dashboard':
		include "halaman/dashboard.php";
	break;
	case 'reset_password':
		include "halaman/reset_password.php";
	break;
	case 'ldp_create':
		include "halaman/ldp_create.php";
	break;
	case 'ldp_draft':
		include "halaman/ldp_draft.php";
	break;
	case 'ldp_status':
		include "halaman/ldp_status.php";
	break;
	case 'ldp_detail':
		include "halaman/ldp_detail.php";
	break;
	case 'master_model':
		include "halaman/master_model.php";
	break;
	case 'master_no_mesin':
		include "halaman/master_no_mesin.php";
	break;
	case 'master_rangka':
		include "halaman/master_rangka.php";
	break;
	case 'master_tipe_mesin':
		include "halaman/master_tipe_mesin.php";
	break;
	case 'tambah_master_model':
		include "halaman/tambah_master_model.php";
	break;
	case 'tambah_master_no_mesin':
		include "halaman/tambah_master_no_mesin.php";
	break;
	case 'tambah_master_rangka':
		include "halaman/tambah_master_rangka.php";
	break;
	case 'tambah_master_tipe_mesin':
		include "halaman/tambah_master_tipe_mesin.php";
	break;
	case 'service_info':
		include "halaman/service_info.php";
	break;

	default:
		include "halaman/dashboard.php";
	break;
}
?>
