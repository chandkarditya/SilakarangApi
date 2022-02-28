<?php
require_once "../connection.php";

abort_if($con, get_email());

$status = 'success';
$data = [];

if($_SERVER['REQUEST_METHOD'] === 'POST')
{
	$nm_pengunjung = $_POST['nm_pengunjung'];
	$ulasan = $_POST['ulasan'];
	$tgl_update = $_POST['tgl_update'];
	$status_ = $_POST['status_'];

	$sql_insert = "INSERT INTO t_review(nm_pengunjung, ulasan, tgl_update, status_) VALUES('$nm_pengunjung', '$ulasan', '$tgl_update', '$status_')";


	$status = "";
	if(mysqli_query($con, $sql_insert)) {
		$status = "success";
	} else {
		$status = "failed";
	}
} else {
	$status = 'failed';
}

echo json_encode([
	'status'=>$status,
]);