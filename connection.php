<?php

require_once __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

$HOST = $_ENV['DB_HOST'];
$USER_NAME = $_ENV['DB_USER_NAME'];
$PASSWORD = $_ENV['DB_PASSWORD'];
$DATABASE_NAME = $_ENV['DB_NAME'];
$PORT = $_ENV['DB_PORT'];

$connection = mysqli_connect($HOST, $USER_NAME, $PASSWORD, $DATABASE_NAME, $PORT);

// if (!$connection) {
//     die("Connection failed: " . mysqli_connect_error());
// } 
// else
// {
//     echo "Connection successful!";
// }

?>