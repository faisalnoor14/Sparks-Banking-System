<?php 

$host = "localhost";
$user = "root";
$pass = "";
$name = "bank";

$conn = mysqli_connect($host, $user, $pass, $name);

if(!$conn){
    die("Unable to connect to the database error --> ".mysqli_connect_error());
}

?>
