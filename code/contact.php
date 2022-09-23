<?php
 session_start(); 
	include 'data_con.php';
	$sql = "SELECT checkins.place,checkins.timestamp,has_covid.status FROM checkins
    INNER JOIN has_covid ON checkins.timestamp=has_covid.date
    WHERE checkins.timestamp > now() - INTERVAL 7 day AND checkins.name='{$_SESSION["SESSION_NAME"]}'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
?>	
		<tr>
			<td><?=$row['place'];?></td>
			<td><?=$row['timestamp'];?></td>
			<td><?=$row['status'];?></td>
			
		</tr>
<?php	
	}
	}
	else {
		echo "0 results";
	}
	mysqli_close($conn);
?>