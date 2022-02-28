<?php
require_once "../connection.php";

abort_if($con, get_email());

$status = 'success';
$data = [];

base64_decode(explode(' ',getallheaders()['Authentication'])[1]);

if($_SERVER['REQUEST_METHOD'] === 'GET')
{
	$sql = "SELECT * FROM t_aktivitas";

	$query = mysqli_query($con, $sql);


	while($row = mysqli_fetch_array($query)) {
		$data[] = [
			'ID_Aktivitas'=>$row['ID_Aktivitas'],
			'nm_Aktivitas'=>$row['nm_Aktivitas'],
			'harga'=>$row['harga'],
			'deskripsi'=>$row['deskripsi'],
			'foto_aktivitas'=>$row['foto_aktivitas'],
			'rate_bintang'=>$row['rate_bintang'],
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
