<?php

include __DIR__ . '/src/Framework/Database.php';

use Framework\Database;

$db = new Database();

$query = "SELECT * FROM products";

$stmt = $db->connection->query($query, PDO::FETCH_ASSOC);

var_dump($stmt->fetchAll());
