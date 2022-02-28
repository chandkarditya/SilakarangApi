<?php
require_once "../connection.php";

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM t_admin WHERE email='$email' && password='$password'";

$query = mysqli_query($con, $sql);


$res = [
	'status'=>'failed'
];

if($query->num_rows == 0)
{
	$res = [
		'status'=>'success',
		'token'=> base64_encode($email)
	];
}

echo json_encode($res);