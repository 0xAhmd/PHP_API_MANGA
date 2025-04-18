<?php
header("Content-Type: application/json");
include 'db.php';


$sql = "SELECT * FROM manga"; // adjust table name as needed
$result = $conn->query($sql);

$manga_list = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $manga_list[] = $row;
    }
    echo json_encode([
        "status" => "success",
        "data" => $manga_list
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => "No manga found"
    ]);
}

$conn->close();
