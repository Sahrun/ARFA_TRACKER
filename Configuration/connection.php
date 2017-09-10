<?php
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
//setup database

$host = "localhost";
$user = "root";
$pass = "";
$dbName = "arfatrakker";

$connection = mysqli_connect($host,$user,$pass ,$dbName);

if (!$connection) {
    die('Connection eror (' . mysqli_connect_errno() . ') '
            
. mysqli_connect_error());
}

//$tapelkd = "7fd69a26245ab95088bcfcccc6cc559e";
?>