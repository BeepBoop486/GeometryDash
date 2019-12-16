<?php 

	include '../inc/db.php';

	if (isset($_GET["lvlid"])) {
		$lvlid = $_GET["lvlid"];

		$stmt = $conn->prepare("SELECT * FROM levels WHERE id=?");
		$stmt->bind_param("i", $lvlid);
		$stmt->execute();

		$result = $stmt->get_result();

		$likes = 0;

		if ($result->num_rows > 0) {

			$row = $result->fetch_array(MYSQLI_ASSOC);
			$likes = $row["likes"];

			echo $likes;
		} else {
			echo "This level doesn't exist";
		}
	}

 ?>