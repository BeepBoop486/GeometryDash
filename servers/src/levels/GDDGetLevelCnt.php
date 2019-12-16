<?php 

	include '../inc/db.php';
	if (isset($_GET["id"])) {
		$lvlid = $_GET["id"];
		//$query = $conn->query("SELECT lvlcnt FROM levels WHERE id=$lvlid");
		/*$stmt = $conn->prepare("SELECT lvlcnt FROM levels WHERE id=?");
		$stmt->bind_param("i", $lvlid);
		$stmt->execute();
		$query = $stmt->get_result();
		if ($query->num_rows > 0) {
			$row = $query->fetch_array(MYSQLI_ASSOC);
			echo $row["lvlcnt"];
		} else {
			echo "-82";
		}*/

		if (file_exists("saved/".$_GET["id"].".gdl")) {
			echo file_get_contents("saved/".$_GET["id"].".gdl");
		} else {
			echo "This level doesn't exist";
		}
	} else {
		echo "-81";
	}

 ?>