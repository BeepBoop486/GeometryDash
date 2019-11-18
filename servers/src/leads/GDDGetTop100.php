<?php 

	include '../inc/db.php';

	$query = $conn->query("SELECT * FROM users ORDER BY stars DESC LIMIT 100");
	if($query)
	{
		if ($query->num_rows > 0) {
			$top = 0;
			while($row = $query->fetch_assoc()) {
				$top += 1;
				echo $top . "\n";
				echo $row["uname"] . "\n";
				echo $row["stars"] . "\n";
				echo $row["diamonds"] . "\n";
				echo $row["coins"] . "\n";
				echo $row["userCoins"] . "\n";
				echo $row["demons"] . "\n";
				echo $row["creatorPoints"] . "\n";
				echo $row["icon"] . "\n";
				echo $row["color1"] . "\n";
				echo $row["color2"] . "\n";
			}
		} else {
			echo "There're not players";
		}
	} else {
		echo "Error querying in the server";
	}

 ?>