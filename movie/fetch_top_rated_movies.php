<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

include "../includes/db_connect.php";

$topRatedMoviesQuery = "SELECT movie_id, title, imdb_rating, poster_url FROM movie ORDER BY imdb_rating DESC";
$result = $conn->query($topRatedMoviesQuery);

if (!$result) {
    http_response_code(500);
    echo json_encode(["error" => "Database query failed: " . $conn->error]);
    exit;
}

$movies = $result->fetch_all(MYSQLI_ASSOC);
header('Content-Type: application/json');
echo json_encode($movies);

$conn->close();
