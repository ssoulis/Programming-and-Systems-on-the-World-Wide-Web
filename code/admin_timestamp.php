<?php

//setting header to json
header('Content-Type: application/json');
include 'data_con.php';
$query = sprintf("SELECT populartimes0data0,populartimes0data1,populartimes0data2,populartimes0data3,populartimes0data4,populartimes0data5,
populartimes0data6,populartimes0data7,populartimes0data8,populartimes0data9,populartimes0data10,populartimes0data11,populartimes0data12,
populartimes0data13,populartimes0data14,populartimes0data15,populartimes0data16,populartimes0data17,populartimes0data18,populartimes0data19,
populartimes0data20,populartimes0data21,populartimes0data22,populartimes0data23, FROM generic ");


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