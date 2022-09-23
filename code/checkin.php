<?php
 session_start(); 
	include 'data_con.php';
	$sql = "SELECT name,popularity_estimation,timestamp,place FROM checkins WHERE name='{$_SESSION["SESSION_NAME"]}'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
?>	
		<tr>
			<td><?=$row['name'];?></td>
			<td><?=$row['popularity_estimation'];?></td>
			<td><?=$row['timestamp'];?></td>
            <td><?=$row['place'];?></td>
			
		</tr>
<?php	
	}
	}
	else {
		echo "0 results";
	}
	mysqli_close($conn);
?>