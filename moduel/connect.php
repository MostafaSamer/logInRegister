<?php
$server = "localhost";
$username = "root";
$password = "";
$dbName = "small_project";

$connect = new mysqli($server, $username, $password, $dbName);

if ($connect->connect_error) {
    die('conn'.$connect->connect_error);
}
?>
