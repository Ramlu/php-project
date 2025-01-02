<?php
$host = 'mysql'; // Service name in docker-compose.yml
$db = 'exampledb';
$user = 'exampleuser';
$pass = 'examplepassword';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
