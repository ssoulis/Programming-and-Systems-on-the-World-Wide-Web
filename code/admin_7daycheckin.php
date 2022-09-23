<?php
//setting header to json
header('Content-Type: application/json');
include 'data_con.php';
$query = sprintf("SELECT count(checkins.id) as id FROM checkins    # vriskoyme ton ari8mo twn ckeckin ids apo to table checkins kai ton xrhsimopoioume san id
INNER JOIN has_covid ON checkins.timestamp=has_covid.date  # selects records that have matching values in both tables
WHERE checkins.timestamp > now() - INTERVAL 7 day  # exei ginei checkin se diasthma megalytero apo 7 hmeres
ORDER BY checkins.id DESC"); # edw xrhsimopoioume to count gia to order by se f8hnousa seira

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