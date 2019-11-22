<?php 

	include '../inc/db.php';

	if (isset($_GET["lvlid"])) {
		$lvlid = str_replace("'", "\'", $_GET["lvlid"]);
		$stmt = $conn->prepare("SELECT * FROM likes WHERE lvlid=?");
		$stmt->bind_param("i", $lvlid);

		$stmt->execute();

		//$query = $conn->query("SELECT * FROM likes WHERE lvlid=$lvlid");
		if ($stmt) {
			$likes = 0;
			$result = $stmt->get_result();
			while ($row = $result->fetch_assoc()) {
				$likes = $likes + 1;
			}
			echo $likes;
		} else {
			echo "Error querying the database";
		}
	}

 ?>