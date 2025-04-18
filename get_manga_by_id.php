<?php
header("Content-Type: application/json");
include 'db.php';


// Check if ID is provided
if (!isset($_GET['id'])) {
    echo json_encode([
        "status" => "error",
        "message" => "No manga ID provided"
    ]);
    exit;
}

$id = intval($_GET['id']); // Sanitize ID

$sql = "SELECT * FROM manga WHERE id = $id"; // Adjust 'manga' and 'id' as per your table schema
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $manga = $result->fetch_assoc();
    echo json_encode([
        "status" => "success",
        "data" => $manga
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => "Manga not found"
    ]);
}

$conn->close();
