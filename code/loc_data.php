<?php

$conn= mysqli_connect("localhost","root","","myvash");

$result = mysqli_query($conn, "SELECT name, coordinateslat, coordinateslng, current_popularity from generic");
$data = array();
while ($row = mysqli_fetch_assoc($result))
{
    $data[] = $row;
    
}

echo json_encode($data);
?>