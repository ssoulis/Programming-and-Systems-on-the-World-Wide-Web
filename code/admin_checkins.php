<?php
//setting header to json
header('Content-Type: application/json');
include 'data_con.php';
$query = sprintf("SELECT id FROM checkins ORDER BY `checkins`.`id` DESC");

//execute query
$result = $conn->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
  $data[] = $row;
}

//free memory associated with result
$result->close();

//close connection
$conn->close();

//now print the data
print json_encode($data);

?>