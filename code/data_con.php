<?php
    $conn = mysqli_connect("localhost", "root", "", "myvash");

    if (!$conn) {
        echo "<script>alert('Connection failed.');</script>";
    }
?>