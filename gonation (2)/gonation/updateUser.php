<?php

$id = $_GET['id'];

$nama = $_POST['username'];
$password = $_POST['password'];

$k = new PDO("mysql:host=localhost; dbname=gonation", "root", "");
$sql = "UPDATE user_table SET username = ?,
        password = ?
        WHERE id = ?";

$result = $k->prepare($sql);
$result->execute(([$nama, $password, $id]));
?>