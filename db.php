<?php
$host = "localhost";     // or your DB host
$user = "root";
$pass = "";
$dbname = "manga_db";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    
}
