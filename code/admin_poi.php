<?php
//setting header to json
header('Content-Type: application/json');
include 'data_con.php';
$query = sprintf("SELECT place ,COUNT(place) AS count FROM checkins
group BY `place` 
HAVING COUNT(place)>1
order by count desc");

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