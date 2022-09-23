<?php
//setting header to json
header('Content-Type: application/json');
include 'data_con.php';

$query = sprintf("SELECT checkins.place ,COUNT(checkins.place) AS count FROM checkins  # dialegoyme ta shmeia ton covid checkins kai ton ari8mo tous ws ari8mo ton checkins
INNER JOIN has_covid ON checkins.timestamp=has_covid.date # # selects records that have matching values in both tables
WHERE checkins.timestamp > now() - INTERVAL 7 day  # opoy to timestamp me to twrino session exei diafora megalyterh apo 7 meres
group BY `checkins`.`place`     # stixish mesw ton shmeiwn poy eginan ta checkins
HAVING COUNT(checkins.place)>1   # opoy exoyn perissotero apo 1 checkin
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