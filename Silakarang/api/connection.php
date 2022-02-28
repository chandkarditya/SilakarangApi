<?php

    define('HOST', '127.0.0.1'); // change with your host

    define('USER', 'root'); // change with your database user

    define('PASS', ''); // change with your user password

    define('DB', 'db_silakarang'); // database name

    $con = mysqli_connect(HOST, USER, PASS, DB) or die ('Gagal untuk terhubung');



    function get_email() : string
    {
        return base64_decode(explode(' ',getallheaders()['Authentication'] ?? ' ')[1]);
    }

    function abort_if($con, $email) : bool
    {
        $sql = "SELECT * FROM t_admin WHERE email='$email'";
        $query = mysqli_query($con, $sql);

        if($query->num_rows == 1)
        {
            return 1;
        }
        else {
            echo json_encode(['message'=>"Illegal Access, please login"]);
            die();
        }
    }
