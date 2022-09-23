<?php
 session_start(); 
	include 'data_con.php';
	$sql = "SELECT name,status,date FROM has_covid WHERE name='{$_SESSION["SESSION_NAME"]}'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while($row = $result->fetch_assoc()) {
?>	
		<tr>
			<td><?=$row['name'];?></td>
			<td><?=$row['status'];?></td>
			<td><?=$row['date'];?></td>
			
		</tr>
<?php	
	}
	}
	else {
		echo "0 results";
	}
	mysqli_close($conn);
?>