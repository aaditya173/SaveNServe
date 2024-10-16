<?php
session_start();
include 'connection.php';

error_reporting(E_ALL);
ini_set('display_errors', 1);

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['send'])) {
    $email = $_POST['email'];
    $name = $_POST['name'];
    $msg = $_POST['message'];

    if (!empty($email) && !empty($name) && !empty($msg)) {
        $stmt = $connection->prepare("INSERT INTO user_feedback (name, email, message) VALUES (?, ?, ?)");
        if (!$stmt) {
            die("Prepare failed: (" . $connection->errno . ") " . $connection->error);
        }

        $stmt->bind_param("sss", $name, $email, $msg);
        if ($stmt->execute()) {
            header("Location: contact.html");
            exit();
        } else {
            echo "Data not saved. Please try again. Error: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Please fill in all fields.";
    }
}

$connection->close();
?>
