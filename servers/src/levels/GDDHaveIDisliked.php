<?php 

	include '../inc/db.php';

	if (isset($_GET['id'])) {
		$lvlid = $_GET['id'];
	} else if (!isset($lvlid)) {
		die("-1");
	}

	if (isset($_SESSION['uname'])) {
		$stmt = $conn->prepare("SELECT * FROM dislikes WHERE uname=? AND lvlid=? LIMIT 1");
		$stmt->bind_param("si", $_SESSION['uname'], $lvlid);
		$stmt->execute();
		$stmt->store_result();
		if ($stmt->num_rows > 0) {
			die("-1"); //We already liked this level
		}
		$stmt->close();
	} else {
		die("-1"); //This will return 1, this won't let the user to be able to like
	}

 ?>