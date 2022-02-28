<?php
require_once "../connection.php";

abort_if($con, get_email());

$status = '';
$data = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$nm_Aktivitas = $_POST['nm_Aktivitas'];
	$harga = $_POST['harga'];
	$deskripsi = $_POST['deskripsi'];
	$foto_aktivitas = $_POST['foto_aktivitas'];
	$rate_bintang = $_POST['rate_bintang'];
	$tgl_update = $_POST['tgl_update'];
	$status_ = $_POST['status_'];

	$sql_insert = "INSERT INTO
		t_aktivitas(nm_Aktivitas, harga, deskripsi, foto_aktivitas, rate_bintang, tgl_update, status_)
		VALUES('$nm_Aktivitas', '$harga', '$deskripsi', '$foto_aktivitas', $rate_bintang, '$tgl_update', '$status_')";

	if (mysqli_query($con, $sql_insert)) {
		$status = "success";
	} else {
		mysqli_error($con);
		$status =
			'failed';
	}
}
echo json_encode([
	'status' => $status
]);
