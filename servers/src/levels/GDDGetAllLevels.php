<?php 

	include '../inc/db.php';

	$query = $conn->query("SELECT * FROM levels");
	echo "[lvlname]";
	if ($query->num_rows > 0) {
		while($row = $query->fetch_assoc()) {
			$line = "\n" . $row["id"] . "=" . $row["lvlname"];
			echo $line;
		}
	}


 ?>