<?php
require_once "../connection.php";

abort_if($con, get_email());

$status = 'success';
$data = [];


if($_SERVER['REQUEST_METHOD'] === 'GET')
{
	$sql = "SELECT * FROM t_review";

	$query = mysqli_query($con, $sql);


	while($row = mysqli_fetch_array($query)) {
		$data[] = [
			'ID_Review'=>$row['ID_Review'],
			'nm_pengunjung'=>$row['nm_pengunjung'],
			'ulasan'=>$row['ulasan'],
			'tgl_update'=>$row['tgl_update'],
			'status_'=>$row['status_']
		];
	}
} else {
	$status = 'failed';
}

echo json_encode([
	'status'=>$status,
	'data'=>$data
]);