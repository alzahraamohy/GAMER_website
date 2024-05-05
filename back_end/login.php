<?php

$User = $_POST["user"];
$Password = $_POST["password"];

$host = "localhost";
$dbname = "test";
$username = "root";
$password = "";

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$query = "SELECT *FROM signup WHERE Username = '$User' AND Password = '$Password'";
$result = $conn->query($query);
if ($result->num_rows == 1) {
    //login success
    echo"Loged in, Welcome, $User" ;
}
else {
    echo "Username or passowrd is incorrect, try again";
    //login failed
}
?>
