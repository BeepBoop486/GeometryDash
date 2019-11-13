<?php 

	include '../inc/db.php';

	$query = $conn->query("SELECT * FROM levels ORDER BY id DESC");
	if ($query->num_rows > 0) {
		while($row = $query->fetch_assoc()) {
			echo $row["lvlname"] . "\n";
			echo $row["id"] . "\n";
			echo $row["rate"] . "\n";
			echo $row["stars"] . "\n";
			echo $row["downloads"] . "\n";
			echo $row["likes"] . "\n";
			echo $row["dislikes"] . "\n";
			echo $row["isepic"] . "\n";
			echo $row["isfeatured"] . "\n";
			echo $row["isdemon"] . "\n";
			echo $row["uploader"] . "\n";
		}
	}


 ?>