<?php
$host = 'masukkan endpoint';
$user = 'user database';
$pass = 'pass database';
$dbname = 'database name';

$conn = new mysqli($host, $user, $pass, $dbname);
if($conn->connect_error){
        die('Connect error: '.$conn->connect_error);
}
?>
