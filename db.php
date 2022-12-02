<?php
//    $hostname = 'localhost';
//    $username = 'root';
//    $password = '';
//    $dbname = 'db_apotik';

    $dbhost = $_SERVER['web-apotik.cknejpp11gcg.ap-southeast-1.rds.amazonaws.com'];
    $dbport = $_SERVER['3306'];
    $dbname = $_SERVER['web-apotik'];
    $charset = 'utf8' ;

    $dsn = "mysql:host={$dbhost};port={$dbport};dbname={$dbname};charset={$charset}";
    $username = $_SERVER['admin'];
    $password = $_SERVER['admin123'];

$pdo = new PDO($dsn, $username, $password);

    $link = new mysqli($_SERVER['web-apotik.cknejpp11gcg.ap-southeast-1.rds.amazonaws.com'], $_SERVER['admin'], $_SERVER['admin123'], $_SERVER['web-apotik'], $_SERVER['3306']);
//    $conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Gagal terhubung ke database');
?>