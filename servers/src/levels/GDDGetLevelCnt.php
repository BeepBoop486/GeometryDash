<?php 

	include '../inc/db.php';
	if (isset($_GET["id"])) {
		$lvlid = str_replace("'", "\'", $_GET["id"]);
		$query = $conn->query("SELECT lvlcnt FROM levels WHERE id=$lvlid");
		if ($query) {
			if ($query->num_rows > 0) {
				$row = $query->fetch_array(MYSQLI_ASSOC);
				echo $row["lvlcnt"];
			} else {
				echo "-82";
			}
		} else {
			echo "-404";
		}
	} else {
		echo "-81";
	}

 ?>