<?php
header("Content-Type: application/json");
include 'db.php';


$sql = "SELECT * FROM manga"; // adjust table name as needed
$result = $conn->query($sql);

$manga_list = [];

if ($result->num_rows > 0) { 
    while($row = $result->fetch_assoc()) { // fetch_assoc() fetches a result row as an associative array
        $manga_list[] = $row; // append each row to the manga_list array
        
    }
    echo json_encode([
        "status" => "success",
        "data" => $manga_list // return the manga list
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => "No manga found"
    ]);
}

$conn->close();
