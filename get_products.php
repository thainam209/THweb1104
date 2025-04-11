<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "shop_db";

$conn = new mysqli($host, $user, $pass, $db);
$conn->set_charset("utf8");

$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$limit = 9;
$offset = ($page - 1) * $limit;

$totalQuery = $conn->query("SELECT COUNT(*) AS total FROM products");
$total = $totalQuery->fetch_assoc()['total'];
$totalPages = ceil($total / $limit);

$sql = "SELECT * FROM products LIMIT $offset, $limit";
$result = $conn->query($sql);

$products = [];

while ($row = $result->fetch_assoc()) {
    $products[] = [
        "id" => $row['id'],
        "name" => $row['name'],
        "image" => $row['image'], // Giữ nguyên do DB đã chứa 'images/'
        "price" => (float)$row['price']
    ];
}

echo json_encode([
    "products" => $products,
    "totalPages" => $totalPages
]);
?>
