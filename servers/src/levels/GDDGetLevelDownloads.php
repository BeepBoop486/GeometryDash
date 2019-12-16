<?php 

	include '../inc/db.php';

	if (isset($_GET["id"])) {
		//$lvlid = str_replace("'","\'",$_GET["id"]);
		//$query = $conn->query("SELECT * FROM levels WHERE id=$lvlid");
		$stmt = $conn->prepare("SELECT * FROM levels WHERE id=?");
		$stmt->bind_param("i", $_GET["id"]);
		$stmt->execute();
		$query = $stmt->get_result();
		if ($query) {
			if ($query->num_rows > 0) {
				$row = $query->fetch_array(MYSQLI_ASSOC);
				echo $row["downloads"];
			} else {
				echo "-82";
			}
		} else {
			echo "-404";
		}
	} else {
		echo "-3";
	}

 ?>