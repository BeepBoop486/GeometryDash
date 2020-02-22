<?php 

	include '../inc/db.php';

	if (isset($_GET["lvlid"])) {
		$lvlid = $_GET["lvlid"];

		$stmt = $conn->prepare("SELECT * FROM likes WHERE lvlid=?");
		$stmt->bind_param("i", $lvlid);
		$stmt->execute();
		$stmt->store_result();

		if ($stmt->num_rows > 0) {

			echo $stmt->num_rows;
		} else {
			echo "This level doesn't exist";
		}
	}

 ?>