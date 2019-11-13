<?php 

	include '../inc/db.php';

	$query = $conn->query("SELECT * FROM levels");
	if ($query->num_rows > 0) {
		while($row = $query->fetch_assoc()) {
			echo $row["lvlname"] . "\n";
			echo $row["id"] . "\n";
			echo $row["rate"] . "\n";
			echo $row["stars"] . "\n";
		}
	}


 ?>